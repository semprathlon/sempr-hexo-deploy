---
title: Refinements in Data Analytics and Learning Paths towards AWS Certification
date: 2021-02-20 16:29:06
tags:
    - Data Analytics
    - AWS
categories:
    - Computing
        - Cloud
    - Notes
---

## Data Analytics at a Glance

**Analysis** is a detailed examination of something in order to understand its nature or determine its essential features. Data analysis is the process of compiling, processing, and analyzing data so that you can use it to make decisions.

**Analytics** is the systematic analysis of data. Data analytics is the specific analytical process being applied.

Data analysis solutions, which are broader than big data solutions, are made up of gathering, storing, processing, and visualizing data.

The challenges identified in many data analysis solutions can be summarized by five key challenges: *volume*, *velocity*, *variety*, *veracity*, and *value*.

### Structured vs Semi-structured vs Unstructured data

- Structured data is organized and stored in the form of values that are grouped into rows and columns of a table. *Commonly stored in relational databases.*

- Semi-structured data is often stored in a series of key-value pairs that are grouped into elements within a file. *Often stored in NoSQL databases or CSV, XML or JSON files.*

- Unstructured data is not structured in a consistent way. Some data may have structure similar to semi-structured data but others may only contain metadata. *Often takes the form of files or objects.*

## AWS IaaS

### Amazon S3

scalable, durable object storage; decoupling storage from processing; parallelization; centralized, accessible and avoid moving between systems

**S3 bucket policy and IAM policy are different.**
Blocking the offending website IP traffic in security group may be trivial; makes "allows" but not "denies"

## AWS IaC

### CloudFormation

AWS CloudFormation treats infrastructure / environment as code.

## AWS DBaaS

### DynamoDB

DynamoDB is fully-managed scalable, fast and predictable performance NoSQL database. High availability and durability by 3 geographic replicas for each table. Eventually consistent or strong consistent choices. Secondary index for queries other than partition key and sort key.
1RCU = 1 strongly consistent reading or 2 eventually consistent readings of 4KB/s
1WCU = Writing of 1KB/s
Global tables for replications

### SQS/SNS Queue

Amazon SQS is "Fully managed message queuing service".
Standard SQS Queue can be asynchronous, not guaranteed the order, and at-least-once delivery. The other type of SQS Queue is first in first out and processed exactly once.
SNS is kind of like SQS but SNS has topics and those topics can have subscribers.

## AWS Security

### IAM

Users or Groups are attached to Policies.
Services assume Roles to gain access to other services, and roles have policies.

## Extra

https://www.scnsoft.com/blog/spark-vs-hadoop-mapreduce
https://data-flair.training/blogs/apache-spark-rdd-vs-dataframe-vs-dataset/
https://www.guru99.com/data-lake-vs-data-warehouse.html
https://phoenixnap.com/kb/cassandra-vs-mongodb
https://stackshare.io/stackups/amazon-sqs-vs-kafka
