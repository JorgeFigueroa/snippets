## CONECT SSM TO EC2 ISTANZE
aws ssm start-session --target ID_ISTANZE --region eu-west-1

## crea key privata, in aws carica la key publica
aws ec2 create-key-pair --key-name MiKeyPair

## create security group
aws ec2 create-security-group --group-name MySecurityGroup --description "bastion host" --vpc-id VPC_ID
aws ec2 authorize-security-group-ingress --group-id ID_SG --protocol tcp --port 22 --cidr 0.0.0.0/0

## create role con policy
aws iam create-role --role-name SSMInstanceRole --assume-role-policy-document file://trust-policy.json
aws iam attach-role-policy --role-name SSMInstanceRole --policy-arn arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore

aws iam create-instance-profile --instance-profile-name SSMInstanceProfile
aws iam add-role-to-instance-profile --instance-profile-name SSMInstanceProfile --role-name SSMInstanceRole

## create istanze BASTIONHOST
aws ec2 associate-iam-instance-profile --instance-id ID_ISTANZE --iam-instance-profile Arn="ARN_SSMInstanceProfile"
aws ec2 run-instances --image-id ID_AMI --count 1 --instance-type t2.micro  --subnet-id IS_SUBNET --security-group-ids ID_SG --iam-instance-profile Name=SSMInstanceRole




## CHECK ARN
aws iam get-role --role-name SSMInstanceRole --query 'Role.Arn' --output text
aws iam get-instance-profile --instance-profile-name SSMInstanceProfile --query 'InstanceProfile.Arn' --output text

## CHECK SSM ISTANZE EC2
sudo systemctl status amazon-ssm-agent

