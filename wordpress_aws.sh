## AMI WORDPRESS BITNAMI
https://docs.bitnami.com/aws/faq/get-started/find-credentials/#option-2-find-password-by-connecting-to-your-application-through-ssh
ssh -i "EC2_GIORGIOMILANO.pem" bitnami@3.252.253.225
sudo cat /home/bitnami/bitnami_credentials
mysql -u root -p  ## pass  bitnami_credentials 

