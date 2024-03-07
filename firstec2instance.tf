terraform{
      required_providers {
      aws = { 
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
}
required_version = ">= 1.2.0"
}
provider"aws"{
        region = "us-east-1"
}
resource "aws_instance" "my_ec2_instance" {
         ami="ami-07d9b9ddc6cd8dd30"
         instance_type="t2.micro"
         tags={
         Name="terraformlite"
         }
}