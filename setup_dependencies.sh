GOBIN="go"
export GOPATH="$PWD"


mkdir ./src/github.com
mkdir ./src/github.com/malware-unicorn/
git clone https://github.com/malware-unicorn/managed-bots.git ./src/github.com/malware-unicorn/managed-bots
git clone https://github.com/malware-unicorn/go-keybase-chat-bot.git ./src/github.com/malware-unicorn/go-keybase-chat-bot
git clone https://github.com/malware-unicorn/keybase-bot-api.git ./src/github.com/malware-unicorn/keybase-bot-api
cd ./src/github.com/malware-unicorn/keybase-bot-api
git submodule init
git submodule update
# Remove the usage of vendors to force our latest version:
rm -rf ./src/github.com/keybase/client/go/vendor/github.com/keybase/go-framed-msgpack-rpc
rm -rf ./src/github.com/keybase/client/go/vendor/github.com/keybase/backoff
cd $GOPATH
mv ./src/github.com/malware-unicorn/keybase-bot-api/src/github.com/keybase ./src/github.com/keybase
$GOBIN get -v github.com/keybase/go-framed-msgpack-rpc/rpc
$GOBIN get -v github.com/araddon/dateparse
$GOBIN get -v github.com/keybase/backoff
$GOBIN get -v github.com/keybase/msgpackzip
$GOBIN get -v github.com/keybase/go-codec
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
