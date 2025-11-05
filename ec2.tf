resource "local_file" "IP" {
    content = "aws_instance.example.public_ip"
    filename = "myip.txt"

}


# creating ec2
resource "aws_instance" "example" {
   ami = "ami-0a25a306450a2cba3"
   instance_type  = "t2.nano"
   key_name = "roche-key" 
   tags  = {
     "Name" = "sanjeev-vm-1"
   }
   
}