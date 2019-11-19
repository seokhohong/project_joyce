export PATH=$PATH:/opt/conda/anaconda/bin
export PYSPARK_DRIVER_PYTHON=/opt/conda/anaconda/bin/jupyter
export PYSPARK_PYTHON=/opt/conda/anaconda/bin/python3
export PYSPARK_DRIVER_PYTHON_OPTS="notebook --notebook-dir=~"
export SPARK_YARN_USER_ENV=PYTHONHASHSEED=0
pyspark \
	--name "Pyspark Notebook" \
	--num-executors 1 \
	--conf spark.executor.memory='32g' \
	--conf spark.dynamicAllocation.enabled=true \
	--conf spark.shuffle.service.enabled=true \
	--conf spark.dynamicAllocation.minExecutors=1 \
	--conf spark.dynamicAllocation.maxExecutors=20 \
	--conf spark.dynamicAllocation.executorIdleTimeout='300s' \
	--conf spark.executor.cores=4 \
	--conf spark.dynamicAllocation.initExecutors=1 \
	--conf spark.sql.shuffle.partitions=10 \
	--conf spark.kryoserializer.buffer.max=1g \
	--conf spark.driver.memory='16g' \
	--conf spark.rpc.message.maxSize='2047' \
	--conf spark.driver.maxResultSize=2g

