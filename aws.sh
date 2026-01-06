#EC2 Instance Connect 
ec2-user
sudo su #root

aws configure sso
aws configure list-profiles
aws sso login --profile <tu-perfil-sso>
aws sso logout


[SSO_PROFILE]
sso_start_url = https://azienda.awsapps.com/start#/
sso_region = REGION
sso_account_id = ID
sso_role_name = ROLE
region = REGION
output = json


https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
aws configure --profile name_profile
  AWS Access Key ID [None]: ***************
  AWS Secret Access Key [None]: **********************
  Default region name [None]: eu-west-1

aws configure list --profile name_profile
aws sts get-caller-identity

awslogs get /my-log-group ALL --watch  --profile name_profile

### https://aws.amazon.com/es/cli/
aws s3 ls
aws s3 ls  s3://nome_bucket
aws s3 cp image.png s3://nome_bucket
aws --profile nome_profile s3 cp /path s3://nome_bucket/path --recursive
aws --profile nome_profile s3 sync /path s3://nome_bucket/path

aws codecommit list-repositories
aws lambda list-functions
aws ecr describe-repositories  ## lista lambda

aws ec2 describe-instances --profile name_profile

aws dynamodb list-tables
aws dynamodb list-tables --region name_region
aws dynamodb scan --table-name TABLE_NAME --region REGION --max-items 10
aws dynamodb scan --table-name nome_table

aws iam list-roles --region name_region

## Install the Session Manager plugin on Windows
https://docs.aws.amazon.com/systems-manager/latest/userguide/install-plugin-windows.html
https://s3.amazonaws.com/session-manager-downloads/plugin/latest/windows/SessionManagerPluginSetup.exe


## CONFIG GIT REPO CODECOMMIT AWS
git config --global credential.helper '!aws codecommit credential-helper $@'
git config --global credential.UseHttpPath true
pip install git-remote-codecommit


### SEVERLESS
https://www.serverless.com/framework/docs/getting-started
https://www.serverless.com/framework/docs/providers/aws/guide/serverless.yml
npm install -g serverless
npm init -y
serverless -v
serverless config credentials --provider aws --profile strudent1 --key *********** --secret *************
cat ~/.aws/credentials

serverless create --template aws-nodejs --name name_project
sls create -t nome_template -n name_project
serverless deploy --verbose
sls invoke -f name -s dev
sls invoke local -f name -s dev

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
