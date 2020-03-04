provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "new2" {
  ami           = "ami-0217a85e28e625474"
  instance_type = "t2.micro" 

  user_data     = <<-EOF
              #!/bin/bash
              yum install nginx -y
              yum update -y
              EOF

}

