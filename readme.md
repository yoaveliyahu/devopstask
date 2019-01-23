prerequsite :
1. download terraform-provider-virtualbox https://github.com/terra-farm/terraform-provider-virtualbox/releases
2. save it to  \terraform.d\plugins
3. run terraform init

How to use this repo
if you want apiGateway run
run terraform apply -var 'apigateway=true'
or change it in terraform.tfvars

by defualt its false