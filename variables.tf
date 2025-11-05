variable "sanju-ami-id" {
  type = string
  description = "this is sydney aws region ami id"
  #default = "ami-0a25a306450a2cba3"
  # not a good practise to keep vairable value directly in the file

}

variable "vm-name" {
    type = string
    description = "my aws vm name"
    #sensitive = true
  
}

variable "vm-size" {
   type = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2-key-name" {
  type = string
}

variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
}

variable "private-key-algo" {
  description = "private-key-algo"
  type        = string
}

variable "key-size" {
  description = "key-size"
  type        = string
}
