module "ec2_cluster" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> 2.0"

  name                   = "my-cluster"
  instance_count         = 1

  ami                    = "ami-0fcd8d621cf9ab602"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-01442babe7cbc7877"]
  subnet_id              = "subnet-0e0a74580606cc2ac"


  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
