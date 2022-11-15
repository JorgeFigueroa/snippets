https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
$ aws configure
AWS Access Key ID [None]: ***************
AWS Secret Access Key [None]: **********************
Default region name [None]: us-west-2


### SEVERLESS
https://www.serverless.com/framework/docs/getting-started
npm install -g serverless
npm init -y
serverless -v
serverless config credentials --provider aws --profile strudent1 --key *********** --secret *************
serverless create --template aws-nodejs --name name_project
serverless deploy --verbose
serverless logs -f 
serverless logs -f name_project -t
serverless remove 


### CDK
nvm use 16.13.2
npm install -g aws-cdk
cdk –version
cdk bootstrap aws://ID_ACCOUNT_AWS/eu-west-1
cdk init --language typescript
cdk synth  #crea la cartella cdk.out che contiene json di cloudformation compilado
cdk deploy
cdk destroy


npm install @aws-cdk/aws-lambda
npm run build
