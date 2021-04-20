from pyspark import SparkContext 
from awsglue.context import GlueContext
from awsglue.dynamicframe import DynamicFrame

sc = SparkContext.getOrCreate()
gc = GlueContext(sc)
spark = gc.spark_session

plist = '[{"Product":"P1","Qty":"10"},{"Product":"P2","Qty":"5"}]'

spark_df = spark.read.json(sc.parallelize([plist]))
glue_df = DynamicFrame.fromDF(spark_df, gc, "glue_df")

glue_df.printSchema()
glue_df.toDF().show()