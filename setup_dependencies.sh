GOBIN="$PWD/../go/bin/go"
export GOPATH="$PWD"

$GOBIN get -v github.com/araddon/dateparse
$GOBIN get -v github.com/keybase/go-framed-msgpack-rpc/rpc
$GOBIN get -v github.com/keybase/backoff
$GOBIN get -v github.com/keybase/msgpackzip
$GOBIN get -v github.com/keybase/go-codec
# Remove the usage of vendors to force our latest version:
rm -rf ./src/github.com/keybase/client/go/vendor/github.com/keybase/go-framed-msgpack-rpc
rm -rf ./src/github.com/keybase/client/go/vendor/github.com/keybase/backoff
$GOBIN get -v golang.org/x/sync/errgroup
$GOBIN get -v golang.org/x/oauth2
$GOBIN get -v github.com/stretchr/testify/require
$GOBIN get -v github.com/stathat/go
$GOBIN get -v github.com/aws/aws-sdk-go/service/ses
$GOBIN get -v github.com/aws/aws-sdk-go/service/cloudwatchlogs
$GOBIN get -v github.com/aws/aws-sdk-go/aws/session
$GOBIN get -v github.com/aws/aws-sdk-go/aws
$GOBIN get -v github.com/kballard/go-shellquote
$GOBIN get -v github.com/go-sql-driver/mysql
$GOBIN get -v code.gitea.io/gitea/modules/structs
