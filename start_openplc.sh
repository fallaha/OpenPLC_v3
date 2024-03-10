#!/bin/bash
mkdir -p /persistent/st_files
cp -n /workdir/webserver/dnp3_default.cfg /persistent/dnp3.cfg
cp -n /workdir/webserver/openplc_default.db /persistent/openplc.db
cp -n /workdir/webserver/st_files_default/* /persistent/st_files/
cp -n /dev/null /persistent/persistent.file
cp -n /dev/null /persistent/mbconfig.cfg
cd "/home/ali/Documents/OpenPLC_v3/webserver"
"/home/ali/Documents/OpenPLC_v3/.venv/bin/python3" webserver.py
