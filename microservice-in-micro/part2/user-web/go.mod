module part2/user-web

replace part2/proto/auth => ../proto/auth

replace part2/proto/user => ../proto/user

replace part2/basic => ../basic

go 1.13

require (
	github.com/go-redis/redis v6.15.6+incompatible // indirect
	github.com/micro/cli v0.2.0
	github.com/micro/go-micro v1.15.1
	part2/basic v0.0.0-00010101000000-000000000000
	part2/proto/auth v0.0.0-00010101000000-000000000000
	part2/proto/user v0.0.0-00010101000000-000000000000
)
