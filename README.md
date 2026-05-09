# stedi-human-balance-analytics
Udacity Data Engineering with AWS Nanodegree project

# STEDI Human Balance Analytics

This project builds a data lakehouse solution for the STEDI Step Trainer using AWS Glue, Amazon S3, and Amazon Athena.

The goal is to process customer, accelerometer, and step trainer data through trusted and curated layers so the final dataset can be used for machine learning.

## Project Architecture

The pipeline follows these stages:

1. `customer_landing` → `customer_trusted`
2. `accelerometer_landing` + `customer_trusted` → `accelerometer_trusted`
3. `customer_trusted` + `accelerometer_trusted` → `customer_curated`
4. `step_trainer_landing` + `customer_curated` → `step_trainer_trusted`
5. `accelerometer_trusted` + `step_trainer_trusted` → `machine_learning_curated`

## Technologies Used

- AWS Glue Studio (Visual ETL)
- Amazon Athena
- Amazon S3
- AWS Glue Data Catalog

## Output Tables

### 1. customer_trusted
Contains customers who consented to share their data for research.

### 2. accelerometer_trusted
Contains accelerometer records only for customers in `customer_trusted`.

### 3. customer_curated
Contains customer records for users who have accelerometer data.

### 4. step_trainer_trusted
Contains step trainer records only for customers in `customer_curated`.

### 5. machine_learning_curated
Final curated dataset combining accelerometer and step trainer data for machine learning.

## Final Row Counts

- `customer_trusted`: 482
- `accelerometer_trusted`: 40981
- `customer_curated`: 482
- `step_trainer_trusted`: 14460
- `machine_learning_curated`: 43681

## Repository Structure

```text
glue_jobs/
screenshots/
sql/
README.md
