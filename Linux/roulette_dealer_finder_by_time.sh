#!/bin/bash

echo "Enter schedule (MMDD):"
read MMDD
echo "Enter schedule time (00:00:00):"
read time
grep -i $time $MMDD'_Dealer_schedule' | awk -F $'\t' '{print$1,$3}'
 


