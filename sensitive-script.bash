#!/bin/bash
echo "my password";

echo "Shreding $0 in 5 seconds"
sleep 5
shred -u "${0}"