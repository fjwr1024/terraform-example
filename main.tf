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

# nginxをインストールし、EC2を再作成
user_data_replace_on_change = true

  user_data = <<EOF
#!/bin/bash
amazon-linux-extras install -y nginx1.12
systemctl start nginx
EOF
}
