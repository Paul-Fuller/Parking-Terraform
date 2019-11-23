#########################################
# PRODUCTION Variables
#########################################

variable "aws_key_path" {}
variable "ansible_pubkey" {
    description = "ansible key pair - owned by Aris at the moment"
}

variable "aws_region" {
    description = "EC2 Region for the VPC"
    default = "eu-west-1"
}

variable "vpc_cidr" {
    description = "CIDR for the VPC"
    default = "10.0.0.0/16"
}

variable "public_subnet_cidr1a" {
    description = "CIDR for the Public Subnet"
    default = "10.0.1.0/24"
}

variable "public_subnet_cidr1b" {
    description = "CIDR for the Public Subnet"
    default = "10.0.2.0/24"
}

variable "public_subnet_cidr1c" {
    description = "CIDR for the Public Subnet"
    default = "10.0.3.0/24"
}

variable "private_subnet_cidr1a" {
    description = "CIDR for the Private Subnet"
    default = "10.0.11.0/24"
}

variable "private_subnet_cidr1b" {
    description = "CIDR for the Private Subnet"
    default = "10.0.12.0/24"
}

variable "availability_zone1a" {
    description = "Availability zone based on region"
    default = "eu-west-1a"
}

variable "availability_zone1b" {
    description = "Availability zone based on region"
    default = "eu-west-1b"
}

variable "availability_zone1c" {
    description = "Availability zone based on region"
    default = "eu-west-1c"
}

variable "ami_ubuntu" {
    description = "Ubuntu AMI"
    default = "ami-02df9ea15c1778c9c" # ubuntu 18.04
}

variable "devops_subnet_cidr" {
    description = "CIDR for the DevOps Desktops"
    default = "10.120.0.0/24"
}

# variable "NTTWiFi_subnet_cidr" {
#     description = "NTT WiFi"
#     default = "93.104.202.98/32"
# }

variable "instance_type" {
    description = "Instance Type for virtual machine"
    default = "t2.micro"
}