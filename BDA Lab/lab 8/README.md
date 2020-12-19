## Hadoop Average temperature program
Hadoop Commands
1. su hduser
2. start-all.sh
3. jps
4. export HADOOP_CLASSPATH=$(hadoop classpath)
5. hadoop fs -mkdir /AverageTemperature
6. hadoop fs -mkdir /AverageTemperature/Input
7. hadoop fs -put '/home/chandana/Desktop/Hadoop/averageTemperature/input_data/input.txt' /AverageTemperature/Input
8. sudo javac -classpath ${HADOOP_CLASSPATH} -d '/home/chandana/Desktop/Hadoop/averageTemperature/average_temperture_classes' '/home/chandana/Desktop/Hadoop/averageTemperature/AverageDriver.java' '/home/chandana/Desktop/Hadoop/averageTemperature/AverageReducer.java' '/home/chandana/Desktop/Hadoop/averageTemperature/AverageMapper.java' 
9. jar -cvf averageTemperature.jar -C average_temperature_classes/ .
10. hadoop jar '/home/chandana/Desktop/Hadoop/averageTemperature/averageTemperature.jar' AverageDriver /AverageTemperature/Input /AverageTemperature/Output
11. hadoop fs -cat /AverageTemperature/Output/part-r-00000

### OUTPUT:
![](https://github.com/chandana-kolli/BDA/blob/master/Lab%208/output.JPG)
