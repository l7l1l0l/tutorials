module part2/user-srv

replace part2/basic => ../basic

replace part2/proto/user => ../proto/user

go 1.13

require (
	github.com/go-redis/redis v6.15.6+incompatible // indirect
	github.com/go-sql-driver/mysql v1.4.1
	github.com/golang/protobuf v1.3.2
	github.com/micro/cli v0.2.0
	github.com/micro/go-micro v1.15.1
	part2/basic v0.0.0-00010101000000-000000000000
	part2/proto/user v0.0.0-00010101000000-000000000000
)
