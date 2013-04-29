export HADOOP_CLASSPATH=build/URLCat.jar
hadoop URLCat hdfs://localhost/user/root/hello.txt
export HADOOP_CLASSPATH=build/FileSystemCat.jar
hadoop FileSystemCat hello.txt
