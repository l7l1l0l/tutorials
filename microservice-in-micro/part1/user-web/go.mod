module part1/user-web

replace part1/proto/user => ../proto/user

go 1.13

require (
	github.com/micro/cli v0.2.0
	github.com/micro/go-micro v1.15.1
	part1/proto/user v0.0.0-00010101000000-000000000000
)
