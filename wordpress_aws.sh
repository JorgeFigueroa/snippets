## AMI WORDPRESS BITNAMI
https://docs.bitnami.com/aws/faq/get-started/find-credentials/#option-2-find-password-by-connecting-to-your-application-through-ssh
ssh -i "CHIAVE.pem" bitnami@IP
sudo cat /home/bitnami/bitnami_credentials
mysql -u root -p  ## pass  bitnami_credentials 

