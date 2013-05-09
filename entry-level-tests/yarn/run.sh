#java -classpath .:\
#/usr/share/hadoop/hadoop-core-1.1.2.jar:\
#/usr/share/hadoop/lib/commons-logging-1.1.1.jar:\
#/usr/share/hadoop/lib/commons-configuration-1.6.jar:\
#/usr/share/java/commons-lang-2.6.jar:\
#/usr/share/hadoop/lib/jersey-json-1.8.jar:\
#/usr/share/java/jackson-core.jar:\
#/usr/share/java/jackson-mapper.jar:\
#/usr/share/java/commons-httpclient-3.1.jar:\
#./build/MaxTemperature.jar \
#MaxTemperature ../rawdata/ outputfolder

export HADOOP_CLASSPATH=build/MaxTemperature.jar
hadoop fs -rmr /user/root/output
hadoop MaxTemperature rawdata/ output
