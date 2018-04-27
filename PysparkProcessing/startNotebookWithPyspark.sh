#!/bin/sh
export PYSPARK_DRIVER_PYTHON=/opt/anaconda2/bin/jupyter
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --NotebookApp.open_browser=False --NotebookApp.ip='172.21.100.194' --NotebookApp.port=1299"
export PYSPARK_PYTHON=/opt/anaconda2/bin/python
export SPARK_YARN_USER_ENV=PYTHONHASHSEED=123
#export SPARK_CLASSPATH
pyspark --master yarn-client --queue studentsq --num-executors 8 --executor-memory 4G --executor-cores 4 --driver-memory 2G \
--packages graphframes:graphframes:0.5.0-spark2.0-s_2.11
