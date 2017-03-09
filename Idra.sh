#! /bin/bash

reborn ()
{

        ./$0 &
        ./$0 &

        exit 1

}

trap reborn SIGINT SIGQUIT SIGTERM

while true
do
        echo $RANDOM
        sleep 5;
done

exit 0
