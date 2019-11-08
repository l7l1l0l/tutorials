package basic

import (
	"part3/basic/config"
	"part3/basic/db"
	"part3/basic/redis"
)

func Init() {
	config.Init()
	db.Init()
	redis.Init()
}
