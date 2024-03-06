resource "aws_instance" "web" {
    ami ="ami-07d9b9ddc6cd8dd30"
    instance_type = "t2.micro"
    tag = {
        name = "first-tf-instance"
    }
  
}