#! /bin/bash
PIDFILE=/tmp/Idra.pid
S=5
reborn ()
{
        PID=$$
        sed -i "/$PID/d" $PIDFILE
        ./$0 $RANDOM &
        echo $! >> $PIDFILE
        ./$0 $RANDOM &
        echo $! >> $PIDFILE

        exit 1

}

trap reborn SIGINT SIGQUIT SIGTERM

if [[ $# -eq 0 ]] ; then
    echo $$ > $PIDFILE
fi

while true
do
        sleep $S;
done

exit 0
