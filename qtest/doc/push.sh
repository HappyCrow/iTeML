set -e

## I'll host the compiled documentation temporarily.
server=batteries@91.121.111.213
dir=public_html/qtest

./make.sh

rsync -tvz *.html *.css *.gif $server:$dir