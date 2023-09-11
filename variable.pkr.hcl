# Variables
# variable "aws_access_key" {
#   type = string
# }

# variable "aws_secret_key" {
#   type = string
# }
variable "region"{
    type = string
    default = "ap-south-1"
}
variable "source_ami"{
    type = string
    default = "ami-0f5ee92e2d63afc18"
}
variable "instance_type" {
    type = string
    default = "t2.micro"
}
variable "ssh_username" {
    type = string
    default = "ubuntu"
}
