#!/usr/bin/env bash

weekday=`date +%A`
dayno=`date +%-e`
month=`date +%B`
year=`date +%Y`

echo $dayno


if [[ ("$dayno" -eq "1") || ("$dayno" -eq "21") || ("$dayno" -eq "31") ]] ; then
	suffix="st"
elif [[ ("$dayno" -eq "2") || ("$dayno" -eq "22") ]] ; then
	suffix="nd"
elif [[ ("$dayno" -eq "3") || ("$dayno" -eq "23") ]] ; then
	suffix="rd"
else
	suffix="th"
fi

notify-send "$weekday $dayno$suffix $month $year"
