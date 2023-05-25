# terraform
Sample Terraform Project  which create a s3 and a VPC that contains multiple subnet+EC2+EBS  based on count = length(var.public_subnet_cidrs)

Please run below commands 
$ terraform init
$ terraform plan
$ terraform apply




we have to build public subnets, we need to provide access to the internet in the given VPC
