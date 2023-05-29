-- Databricks notebook source
-- MAGIC %sql
-- MAGIC Create table first_table(
-- MAGIC   Id Int,
-- MAGIC   Name string,
-- MAGIC   Department string,
-- MAGIC   Salary Double)
-- MAGIC   ;
-- MAGIC   

-- COMMAND ----------

insert into first_table(Id, Name, Department,Salary)
values(1,'japana', 'tax',20.22 ),(2,'america', 'tax',31.22 ),(3,'mexico', 'tax',40.22 )

-- COMMAND ----------

-- MAGIC %sql 
-- MAGIC describe history first_table;

-- COMMAND ----------

select * from first_table;


-- COMMAND ----------

-- MAGIC %fs 
-- MAGIC ls s3://databricks-workspace-stack-ad3fd-bucket/ephemeral/ireland-prod/3091838035830938

-- COMMAND ----------

describe detail first_table

-- COMMAND ----------

-- MAGIC %fs ls dbfs:/user/hive/warehouse/first_table/_delta_log/

-- COMMAND ----------

drop table first_table

-- COMMAND ----------


