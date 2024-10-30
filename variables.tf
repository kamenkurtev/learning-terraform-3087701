variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t3.nano"
}

variable "ami_filter" {
  description = "Name filter and owner for AMI"

  type = object({
    name = string
    owner = string
  })

  default = {
    name  = "bitnami-tomcat-*-x86_64-hvm-ebs-nami"
    owner = "979382823631" # Bitnami
  }
}

variable "environment" {
  description = "Development Environment"

  type = object({
    name          = string
    network_pefix = string
  })

  default = {
    name = "dev"
    network_pefix = "10.0"
  }
}


variable "asg_min_size" {
  description = "Minimum number of instances the ASG"

  default            = 1
}

variable "asg_max_size" {
  description = "Maximum number of instances the ASG"

  default            = 2
}

