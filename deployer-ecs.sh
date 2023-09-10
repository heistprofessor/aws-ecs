#!/usr/bin/env bash

STACK_NAME=Airtel-ECS
AWS_REGION=us-east-1
BUCKET_NAME="cfn-templates-v2-$opt"
ENV=$opt

sam package \
  --template-file master.yaml \
  --output-template-file temp-template.template \
  --s3-bucket $BUCKET_NAME \
  --region $AWS_REGION \
  --profile $AWS_PROFILE
