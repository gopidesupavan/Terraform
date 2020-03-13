provider "aws"{

profile="aws-devops"
region="us-east-1"

}

resource "aws_instance" "democreation" {

    ami=var.AMIS[var.REGION]

    instance_type=var.instance_type

    provisioner "local-exec" {

        command="echo ${aws_instance.democreation.private_ip} >> private_ip.txt"
    }

    #key_name=var.ec2_key_name

    /*

    vpc_security_group_ids=[aws_security_group.my-sg.id]


    user_data = <<EOF
		#! /bin/bash
        sudo yum update -y
		sudo yum install -y httpd.x86_64
		sudo service httpd start
		sudo service httpd enable
		echo "<h1>Launched via terraform Terraform</h1>" | sudo tee /var/www/html/index.html
	EOF
    */

  
}














