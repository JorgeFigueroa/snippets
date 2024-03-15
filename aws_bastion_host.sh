## crea key privata, in aws carica la key publica
aws ec2 create-key-pair --key-name MiKeyPair

## create security group
aws ec2 create-security-group --group-name MySecurityGroup --description "Security group for SSH access" --vpc-id vpc-abcdef123
aws ec2 authorize-security-group-ingress --group-id sg-xxxxxx --protocol tcp --port 22 --cidr 0.0.0.0/0

## create istanze subnet publica
aws ec2 run-instances \
    --image-id ami-1234567890abcdef0 \
    --count 1 \
    --instance-type t2.micro \
    --key-name MyKeyPair \
    --subnet-id subnet-publica \
    --security-group-ids sg-0123456789abcdef0 \
    --block-device-mappings '[
        {
            "DeviceName": "/dev/sdh",
            "Ebs": {
                "VolumeSize": 8,
                "VolumeType": "gp2",
                "DeleteOnTermination": true
            }
        }
    ]'

aws ec2 run-instances --image-id ami-1234567890abcdef0 --count 1 --instance-type t2.micro --key-name MyKeyPair --subnet-id subnet-PRIVATA --security-group-ids sg-0123456789abcdef0
