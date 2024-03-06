provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAU6GDU5L5JFTBX64T"
  secret_key = "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"
}
resource "aws_instance" "web" {
    ami ="ami-07d9b9ddc6cd8dd30"
    instance_type = "t2.micro"
    tag = {
        name = "first-tf-instance"
    }
  
}