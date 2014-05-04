#!/usr/bin/env bash

wsend_base=$HOME/.wsend

curl -L -s -o $wsend_base/wsend https://raw.github.com/vannell/wsend/custom/wsend
chmod +x $wsend_base/wsend
curl -L -s -o $wsend_base/README.md https://raw.github.com/vannell/wsend/custom/README.md
curl -L -s -o $wsend_base/COPYING https://raw.github.com/vannell/wsend/custom/COPYING
curl -L -s -o $wsend_base/version https://raw.github.com/vannell/wsend/custom/version

#calling back update version
$wsend_base/wsend $@
