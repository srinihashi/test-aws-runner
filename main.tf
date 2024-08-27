# The configuration for the `cloud` backend.
terraform { 
  cloud { 
    
    organization = "srini-hashi" 

    workspaces { 
      name = "test-1" 
    } 
  } 
}

// Made upate to trigger pipeline
resource "aws_instance" "ec2" {
  ami = "ami-066784287e358dad1" #ami-0fee185d37202108d
  instance_type = "t2.micro"
  key_name = "aws-ssh-key"
  security_groups = ["ssh-from-my-mac"]

  tags = {
    Name = "EC2-FROM-AWS-RUNNER-TFC-TEST-1"
  }
}
