#!/usr/bin/bash

BUCKET=584a14fc-092d-4e73-bf45-fa558a205603
BUCKET_PATH=a526d360-e0b7-4a2e-9f12-ee38af48742c/roll-table-tools
VERSION=v1

# Requires AWS policy GuidBucketAuthor584a14fc

aws s3 sync ./remote-files s3://${BUCKET}/${BUCKET_PATH}/${VERSION}/
aws s3 sync s3://${BUCKET}/${BUCKET_PATH}/${VERSION}/ ./remote-files

