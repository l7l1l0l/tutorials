package main

import (
	"fmt"
	"net/http"

	"part3/basic"
	"part3/basic/config"
	"part3/payment-web/handler"
	"github.com/micro/cli"
	"github.com/micro/go-micro/registry"
	"github.com/micro/go-micro/registry/etcd"
	"github.com/micro/go-micro/util/log"
	"github.com/micro/go-micro/web"
)

func main() {
	// 初始化配置
	basic.Init()

	// 使用etcd注册
	micReg := etcd.NewRegistry(registryOptions)

	// 创建新服务
	service := web.NewService(
		web.Name("mu.micro.book.web.payment"),
		web.Version("latest"),
		web.Registry(micReg),
		web.Address(":8090"),
	)

	// 初始化服务
	if err := service.Init(
		web.Action(
			func(c *cli.Context) {
				// 初始化handler
				handler.Init()
			}),
	); err != nil {
		log.Fatal(err)
	}

	// 新建订单接口
	authHandler := http.HandlerFunc(handler.PayOrder)
	service.Handle("/payment/pay-order", handler.AuthWrapper(authHandler))

	// 运行服务
	if err := service.Run(); err != nil {
		log.Fatal(err)
	}
}

func registryOptions(ops *registry.Options) {
	etcdCfg := config.GetEtcdConfig()
	ops.Addrs = []string{fmt.Sprintf("%s:%d", etcdCfg.GetHost(), etcdCfg.GetPort())}
}
