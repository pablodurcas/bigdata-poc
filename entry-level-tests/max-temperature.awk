#!/usr/bin/env bash
#for year in rawdata/*; do
for year in rawdata/*; do
	echo -ne `basename $year .gz`"\t"
	gunzip -c $year | \
		awk 'BEGIN { 
			# The negative values are descarded
			max=0;
		} 
		{ 
			# POS: 88-92 Air Temperature
			temp = substr($0, 88, 5) + 0;
			# POS: 93-93 Air Temperature Quality code, 1 = Passed all quality checks
			q = substr($0, 93, 1);
			# 9999 temperature is a missing one.
			if (temp !=9999 && q ~ /[01459]/ && temp > max) {
				max = temp;
			}
		}
		END { 
			print max 
		}'
done
