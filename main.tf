provider "aws" {
  profile = "terraform-practice"
  region  = "hoeghogeregion"
}

resource "aws_instance" "hello-world" {
  # ec2のAMI ID を下記に記載する
  ami           = "hogehogehogehoge"
  instance_type = "t2.micro"
  
  tags = {
    Name = "HelloWorld"
  }
}
