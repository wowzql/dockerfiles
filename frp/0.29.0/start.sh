#!/bin/sh
frp_path="/usr/local/frp"
cd $frp_path
type="s"
if [ "${FRP_TYPE}" == "client" ]; then
    type="c"
elif [ "${FRP_TYPE}" == "server" ]; then
    type="s"
fi

$frp_path/frp$type -c $frp_path/frp$type.ini
