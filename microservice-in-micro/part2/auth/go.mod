module part2/auth

replace part2/basic => ../basic

replace part2/proto/auth => ../proto/auth

go 1.13

require (
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/go-redis/redis v6.15.6+incompatible
	github.com/golang/protobuf v1.3.2
	github.com/micro/cli v0.2.0
	github.com/micro/go-micro v1.15.1
	part2/basic v0.0.0-00010101000000-000000000000
	part2/proto/auth v0.0.0-00010101000000-000000000000
)
