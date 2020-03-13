variable "AMIS" {

    type=map(string)

    default={

        us-east-1="ami-035b3c7efe6d061d5"
    }
  
}

variable "ec2_key_name" {
    default="Ec2codedeploy"

}

variable "instance_type" {
  
  default="t2.micro"
}



variable "INSTANCE_USERNAME" {
    default="ec2-user"
  
}

variable "REGION" {

    default="us-east-1"
  
}


