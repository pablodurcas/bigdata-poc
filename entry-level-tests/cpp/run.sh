sudo hadoop fs -rmr /user/root/output
sudo hadoop pipes \
	-conf max_temperature.xml \
	-input rawdata \
	-output output \
	-program bin/max_temperature

#-D hadoop.pipes.java.recordreader=true \
#-D hadoop.pipes.java.recordwriter=true \

# sudo hadoop namenode -format
# sudo hadoop fs -put ../rawdata/ rawdata
# sudo hadoop fs -put max_temperature bin/max_temperature
#sudo hadoop fs -rm /user/root/bin/max_temperature
#hadoop dfsadmin -safemode leave
# sudo hadoop fs -ls
