export HADOOP_CLASSPATH=build/MaxTemperature.jar
hadoop fs -rmr /user/hadoop/output
hadoop MaxTemperature rawdata/ output
