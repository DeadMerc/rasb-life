#!/usr/bin/env bash
total=$(awk '{print $4}' /sys/block/mmcblk0/stat)
written=$(awk '{print $7}' /sys/block/mmcblk0/stat)
min_written=$(expr $total \* 1000)
max_written=$(expr $total \* 10000)
echo "Written:$written"
echo "Min:$min_written"
echo "Max:$max_written"
echo "Min $(expr $written \* 100 / $min_written)% dead"
echo "Max $(expr $written \* 100 / $max_written)% dead"


