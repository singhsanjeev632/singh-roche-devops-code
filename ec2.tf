resource "local_file" "IP" {
    content = "aws_instance.example.public_ip"
    filename = "myip.txt"

}


# creating ec2
resource "aws_instance" "example" {
   #ami = "ami-0a25a306450a2cba3"
   ami = var.sanju-ami-id
   instance_type  = var.vm-size
   key_name = var.ec2-key-name 
   tags  = {
     "Name" = var.vm-name
   }
   
}

