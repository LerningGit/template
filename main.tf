terraform {
  required_providers {
    aws = ">= 3.0"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"
  monitoring = true

#  metadata_options {
#    http_tokens = "required"
#  }
  
  root_block_device {
    encrypted = true
  }
  
  ebs_optimized = true
  
  iam_instance_profile = "your-iam-role"
}
