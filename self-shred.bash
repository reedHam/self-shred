#!/bin/bash


# -----------------------------------------------------------------------------
# DELETE FILE AFTER SUCESSFULL EXECUTION
SHREDDING_GRACE_SECONDS=${SHREDDING_GRACE_SECONDS:-5}
(( $SHREDDING_GRACE_SECONDS > 0 )) && echo -e "Shreding ${0} in $SHREDDING_GRACE_SECONDS seconds \e[1;31mCTRL-C TO KEEP FILE\e[0m"
BOMB="●"
FUZE='~'
SPARK="\e[1;31m*\e[0m"
SLEEP_LEFT=$SHREDDING_GRACE_SECONDS
while (( $SLEEP_LEFT > 0 )); do
    LINE="$BOMB"
    for (( j=0; j < $SLEEP_LEFT - 1; j++ )); do
        LINE+="$FUZE"
    done
    LINE+="$SPARK"
    echo -en $LINE "\r"
    sleep 1
    (( SLEEP_LEFT-- ))
done
shred -u "${0}"