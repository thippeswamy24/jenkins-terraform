provider "aws" {
  region = "ap-south-1"
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
}
resource "aws_instance" "new2" {
  ami           = "ami-0d9462a653c34dab7"
  instance_type = "t2.micro" 

  user_data     = <<-EOF
              #!/bin/bash
              yum install nginx -y
              yum update -y
              EOF

}

