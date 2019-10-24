#!/bin/sh
frp_path="/usr/local/frp"
cd $frp_path
type="s"
if [ "${FRP_TYPE}" == "client" ]; then
    type="c"
elif [ "${FRP_TYPE}" == "server" ]; then
    type="s"
fi

echo $type
$frp_path/frp$type -c $frp_path/frp$type.ini
