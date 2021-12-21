# Amplify

This relates to GrapQL resolvers version 1

#### Tips 

* Use as little as possible per-field auth directives, otherwise resolvers get too big and the deployment will fail 


#### Initialize project

```bash
amplify init --profile <PROFILE_NAME> # profiles can be set in .aws/credentials or .aws/config
```

#### Install require packages 

React 

```bash
npm install aws-amplify @aws-amplify/ui-react
```

React native 

```bash
npm install aws-amplify aws-amplify-react-native @react-native-community/netinfo @react-native-async-storage/async-storage
```

#### Push with smaller size

```bash
amplify push --minify
```

#### Push with destroy models

```bash
amplify push --allow-destructive-graphql-schema-updates
```

#### Managing error Cannot iteratively rollback

Stackoverflow thread: 

title: [AWS Amplify -- Cannot iteratively rollback as the following step does not contain a previousMetaKey: {"status":"WAITING_FOR_DEPLOYMENT"}](https://stackoverflow.com/questions/67591571/aws-amplify-cannot-iteratively-rollback-as-the-following-step-does-not-contai)

**Solution**: Delete deployment-state.json file from S3 Amplify deployment bucket and then amplify push again 