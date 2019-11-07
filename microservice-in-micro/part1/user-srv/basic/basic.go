package basic

import (
	"part1/user-srv/basic/config"
	"part1/user-srv/basic/db"
)

func Init() {
	config.Init()
	db.Init()
}
