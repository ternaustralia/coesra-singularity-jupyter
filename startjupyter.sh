#!/bin/bash
# start notebook
jupyter notebook --allow-root --NotebookApp.token=''
JUPYTER_PID=$!
# open firefox to that address
/usr/bin/firefox --new-tab http://localhost:8888 &
FIREFOX_PID=$!
wait $FIREFOX_PID
kill -9 $JUPYTER_PID