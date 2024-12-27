# How to crawl your way into a database
## A highly scalable Data Ingestion Pipeline for ML in Market Intelligence

### Overview

This repository demonstrates an end-to-end solution for deploying a highly scalable data ingestion pipeline tailored for marketing intelligence. The pipeline enables the collection and analysis of social media posts for applications such as sales tracking, competitor analysis, market insights, and customer behavior evaluation.

By leveraging a modular architecture, this project simplifies data crawling, ensures reliability, and provides scalability. It includes step-by-step guidance, code samples, and configurations to help you set up a robust data ingestion framework.

## Table of Contents

- [What is the Data Ingestion Pipeline?](#what-is-the-data-ingestion-pipeline)
- [Why Use This Pipeline for Market Intelligence?](#why-use-this-pipeline-for-market-intelligence)
- [Repository Features](#repository-features)
- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
  - [Local Testing](#local-testing)
- [Pipeline Architecture](#pipeline-architecture)
- [Contributing](#contributing)
- [License](#license)
---


## What is the Data Ingestion Pipeline?

The data ingestion pipeline is designed to collect and process data from various social media platforms using an event-driven architecture. By combining serverless technologies, modular crawlers, and anti-bot solutions, it provides a scalable and maintainable system to gather, store, and analyze posts for actionable insights.

### Key Features:
- Event-driven architecture leveraging AWS Lambda, EventBridge, and CloudWatch.
- Modular crawling with a dispatcher for dynamic crawler selection.
- Proxies for bypassing anti-bot mechanisms.
- Seamless data aggregation for Large Language Model (LLM)-based analysis.

---

## Why Use This Pipeline for Market Intelligence?

Market intelligence relies heavily on accurate, timely data. This pipeline simplifies the challenges of crawling, storing, and analyzing large volumes of unstructured social media data. It offers:

- **Scalability:** Support for concurrent crawlers with automatic scaling.
- **Reliability:** De-duplication and robust database integration ensure clean data.
- **Flexibility:** Easily extendable to include new crawlers and domains.
- **Actionable Insights:** Aggregated data prepared for advanced LLM-based analysis.

---

## Repository Features

This repository includes:

- A modular, event-driven architecture for data ingestion.
- Preconfigured tools and libraries such as Selenium, Instaloader, and LangChain.
- Examples for building and integrating new crawlers.
- Dockerfile for running headless browsers in AWS Lambda.
- Proxy integration for bypassing anti-bot mechanisms.


---

## Prerequisites

Before using this repository, ensure you have:

- AWS account with access to Lambda, EventBridge, and CloudWatch.
- Python 3.11.9 installed.
- MongoDB or a similar database for storing crawled data.
- Docker for building and deploying headless browser setups.
- Paid proxy service credentials (e.g., SmartProxy).

---

## Setup Instructions

### Local Testing

1. Build and deploy
   ```bash
   docker compose up -d --build

2. Run Test Command
    ```bash
   make local-test-crawler