package basic

import (
	"part2/basic/config"
	"part2/basic/db"
	"part2/basic/redis"
)

func Init() {
	config.Init()
	db.Init()
	redis.Init()
}
