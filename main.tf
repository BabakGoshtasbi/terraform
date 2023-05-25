#local module for this specific project
module "vpc-ec2-ebs" {
  source = "./modules/vpc"
  #version = "1.0.0" if we moved the module to registry 
}

# and s3 from https://registry.terraform.io/modules/terraform-aws-modules/s3-bucket/aws/latest
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket"
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}