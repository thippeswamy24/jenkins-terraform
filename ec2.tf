provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAUPSEJXY56X6HHBYU"
  secret_key = "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"
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

