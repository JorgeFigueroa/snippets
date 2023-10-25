ROLE --> POLICY --> Statement []

aws iam list-users
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor0",
            "Effect": "Allow",
            "Action": "iam:ListUsers",
            "Resource": "*"
        }
    ]
}

aws dynamodb list-tables --region eu-south-1
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "DynamoDBListAllTables",
            "Effect": "Allow",
            "Action": [
                "dynamodb:ListTables"
            ],
            "Resource": "arn:aws:dynamodb:eu-south-1:162229746485:table/*"
        }
    ]
}
