# Sparkify

This repository is the work for my final project from the Udacity Data Engineering with AWS Nanodegree Program. In this project, I will build data pipeline on Amazon Redshift and Apache Airflow.

A music streaming company, Sparkify, has decided that it is time to introduce more automation and monitoring to their data warehouse ETL pipelines and come to the conclusion that the best tool to achieve this is Apache Airflow.

The source data resides in S3 and needs to be processed in Sparkify's data warehouse in Amazon Redshift. The source datasets consist of JSON logs that tell about user activity in the application and JSON metadata about the songs the users listen to.

## :rocket: Table of contents

1. [Prerequisites](#prerequisites)
2. [Project Motivation](#structure)
3. [Instructions](#instructions)
4. [Results](#results)
5. [Acknowledgements](#acknowledgements)

### Prerequisites <a name="prerequisites"></a>

These are libraries that is used in this project:

- airflow

### Instructions <a name="instructions"></a>

1. Connect Airflow and AWS
2. Connect Airflow to AWS Redshift Serverless

### Results <a name="results"></a>

The graph view follows the flow shown in the image below.
![Figure: DAG with correct task dependencies](./images/final-dag.png)

### Acknowledgements <a name="acknowledgements"></a>

1. For this project, I'll be working with two datasets. Here are the s3 links for each:

    - Log data: `s3://udacity-dend/log_data`
    - Song data: `s3://udacity-dend/song_data`

2. The code is inspired by Udacity Data Engineering with AWS Nanodegree Program.

3. For the SQL queries in this project, it is based on my prior project [sparkify-data-warehouse
Public](https://github.com/dhuy237/sparkify-data-warehouse).

## :hammer: Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project.
2. Create your Feature Branch (`git checkout -b feature/Feature`).
3. Commit your Changes (`git commit -m 'Add some feature'`).
4. Push to the Branch (`git push origin feature/Feature`).
5. Open a Pull Request.

## :mailbox: Contact

- Huy Tran ([dhuy237](https://github.com/dhuy237)) - <d.huy723@gmail.com>
