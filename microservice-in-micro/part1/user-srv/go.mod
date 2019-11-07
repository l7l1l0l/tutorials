module part1/user-srv

replace part1/proto/user => ../proto/user

go 1.13

require (
	github.com/go-sql-driver/mysql v1.4.1
	github.com/micro/cli v0.2.0
	github.com/micro/go-micro v1.15.1
	part1/proto/user v0.0.0-00010101000000-000000000000
)
