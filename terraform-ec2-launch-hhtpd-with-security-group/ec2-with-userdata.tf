provider "aws"{

profile="aws-devops"
region="us-east-1"

}

resource "aws_instance" "example" {

    ami="ami-035b3c7efe6d061d5"
    instance_type="t2.micro"

    key_name="Ec2codedeploy"

    vpc_security_group_ids=[aws_security_group.my-sg.id]

    user_data = <<EOF
		#! /bin/bash
        sudo yum update -y
		sudo yum install -y httpd.x86_64
		sudo service httpd start
		sudo service httpd enable
		echo "<h1>Launched via terraform Terraform</h1>" | sudo tee /var/www/html/index.html
	EOF


  
}














