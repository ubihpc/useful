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

#### Create Lambda layer 


```bash
mkdir <lambda_layer_root_folder>
cd <lambda_layer_root_folder>
mkdir -p aws-layer/python/lib/python<VERSION>/site-packages
# Advices 
# Use --system to solve error distutils.errors.DistutilsOptionError: can't combine user with prefix, exec_prefix/home, or install_(plat)base
# Usually I installed one Python library per layer but sometimes multiple libraries per layer is fine
# If using a requirements file, use pip3 install -r requirements.txt --target aws-layer/python/lib/python<VERSION>/site-packages
pip3 install --system --target aws-layer/python/lib/python<VERSION>/site-packages <PYTHON_LIBRARY(IES)> 
cd aws-layer
zip -r9 lambda-layer.zip .
# then upload layer zip-file either via the console or deploy the layer using ...
aws lambda publish-layer-version \
    --layer-name <LAMBDA_LAYER_NAME> \
    --description "<LAMBDA_LAYER_DESCRIPTION_WITHIN_QUOTES>" \
    --zip-file fileb://lambda-layer.zip \
    --compatible-runtimes python<VERSION> # e.g. python3.8
```

Error with pandas/numpy usage as lambda layer. Messages can be:

* Unable to import numpy <VERSION> in AWS Lambda No module named 'numpy.core._multiarray_umath'
* aws lambda Original error was: No module named 'numpy.core._multiarray_umath'
* "errorMessage": "Unable to import module 'lambda_function': Unable to import required dependencies:\nnumpy: \n\nIMPORTANT: PLEASE READ THIS FOR ADVICE ON HOW TO SOLVE THIS ISSUE!\n\nImporting the numpy C-extensions failed. This error can happen for\nmany reasons, often due to issues with your setup or how NumPy was\ninstalled.\n\nWe have compiled some common reasons and troubleshooting tips at:\n\n https://numpy.org/devdocs/user/troubleshooting-importerror.html\n\nPlease note and check the following:\n\n * The Python version is: Python3.8 from \"/var/lang/bin/python3.8\"\n * The NumPy version is: \"1.22.0\"\n\nand make sure that they are the versions you expect.\nPlease carefully study the documentation linked above for further help.\n\nOriginal error was: No module named 'numpy.core._multiarray_umath'\n", "errorType": "Runtime.ImportModuleError",
* 

Solved with: 

https://blog.kukiel.dev/posts/pandas-and-numpy-lambda-layer.html

Useful to use existing layers. AWS let you commercialize layers - that's cool. One to solve the previous errors: 

https://github.com/keithrozario/Klayers