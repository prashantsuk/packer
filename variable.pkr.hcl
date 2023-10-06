# Variables
# variable "aws_access_key" {
#   type = string
# }

# variable "aws_secret_key" {
#   type = string
# }
variable "region"{
    type = string
    default = "us-west-2"
}
variable "source_ami"{
    type = string
    default = "ami-03f65b8614a860c29"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "ssh_username" {
    type = string
    default = "ubuntu"
}
