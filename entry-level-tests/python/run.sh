# For testing we can use the unix pipes redirection. Because Hadoop Streaming 
# uses Unix standard streams as the interface between Hadoop and your program, 
# so you can use any language that can read standard input and write to 
#standard output to write your MapReduce program.

# zcat ../rawdata/* | python map-function.py | python reduce-function.py

# If the unix redirection works fine, the program is ready for hadoop launch.
#hadoop jar /usr/share/hadoop/contrib/streaming/hadoop-streaming-1.1.2.jar \
#	-input ../rawdata/ \
#	-output salida \
#	-mapper map-function.py \
#	-reducer reduce-function.py

hadoop jar /usr/share/hadoop/contrib/streaming/hadoop-streaming-1.1.2.jar \
	-input rawdata \
	-output salida \
	-mapper map-function.py \
	-reducer reduce-function.py


