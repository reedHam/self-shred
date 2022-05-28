#!/bin/bash
echo "my password";

SHREDDING_GRACE_SECONDS=${SHREDDING_GRACE_SECONDS:-5}
[ $SHREDDING_GRACE_SECONDS -gt 0 ] && echo "Shreding in $SHREDDING_GRACE_SECONDS seconds"
sleep $SHREDDING_GRACE_SECONDS
shred -u "${0}"