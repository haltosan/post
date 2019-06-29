#!/bin/bash

echo "---Creating /site dir---"
mkdir site
cd site
echo "[note] move files into the site dir to have them hosted"
echo "---Starting webserver---"
python -m SimpleHTTPServer
