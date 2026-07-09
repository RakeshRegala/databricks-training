from pyspark.sql import SparkSession

spark = SparkSession.builder.appName("Spark Playground").getOrCreate()

df = spark.read.option("header", True) \
               .option("inferSchema", True) \
               .csv("/datasets/customers.csv")

df_result = df.filter((df.purchase_amount > 100) & (df.age >= 30)) \
              .select("customer_id", "name", "purchase_amount")

display(df_result)