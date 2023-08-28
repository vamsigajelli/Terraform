# Resource: EC2 Instance
resource "aws_instance" "TerraformEc2" {
  ami = "ami-0373aa64534d82bf6"
  instance_type = "t2.micro"
  user_data = file("${path.module}/app1-install.sh")
  tags = {
    "Name" = "EC2 Demo"
  }
}