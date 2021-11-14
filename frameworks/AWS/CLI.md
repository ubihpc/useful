# AWS CLI commands

#### Upload data to S3 

```bash
aws s3 cp FILE_DEST s3://BUCKET_NAME/KEY_FULL_PATh
```

#### Update Lambda code

```bash
aws lambda update-function-code --function-name LAMBDA_FUNCTION_NAME --s3-bucket BUCKET_NAME --s3-key KEY_FULL_PATh.zip --publish
```

#### Check IoT core endpoint 

```bash
aws iot describe-endpoint
aws iot --region us-west-2 describe-endpoint
```

#### Publish to topic 

```bash
  aws iot-data publish --topic "myTopic" --cli-binary-format raw-in-base64-out --payload "{\"uptime\": 123,\"temp\":44,\"humidity\":44}"
```