sudo hadoop fs -rmr /user/root/output
sudo hadoop pipes \
	-conf max_temperature.xml \
	-input rawdata \
	-output output \
	-program bin/max_temperature

#-D hadoop.pipes.java.recordreader=true \
#-D hadoop.pipes.java.recordwriter=true \

