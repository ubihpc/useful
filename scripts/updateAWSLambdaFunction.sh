#!/bin/bash

FILE_DEST=$1
BUCKET_NAME=$2
KEY_FULL_PATH=$3
LAMBDA_FUNCTION_NAME=$4
echo `which aws`
echo "Updating code for lambda function $LAMBDA_FUNCTION_NAME by publishing in S3 the file $FILE_DEST. Full location is $BUCKET_NAME/$KEY_FULL_PATH"
aws s3 cp $FILE_DEST s3://$BUCKET_NAME/$KEY_FULL_PATH
aws lambda update-function-code --function-name $LAMBDA_FUNCTION_NAME --s3-bucket $BUCKET_NAME --s3-key $KEY_FULL_PATH --publish
