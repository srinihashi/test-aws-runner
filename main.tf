resource "aws_instance" "ec2" {
  ami = "ami-0fee185d37202108d"
  instance_type = "t2.micro"
  key_name = "aws-ssh-key"
  security_groups = ["ssh-from-my-mac"]

  tags = {
    Name = "EC@-FROM-AWS-GITHUB-RUNNER"
  }
}
