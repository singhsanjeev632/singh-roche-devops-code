resource "local_file" "IP" {
    content = "aws_instance.example.public_ip"
    filename = "myip.txt"

}


# creating ec2
resource "aws_instance" "example" {
   #ami = "ami-0a25a306450a2cba3"
   ami = var.sanju-ami-id
   instance_type  = var.instance_type
   key_name = var.ec2-key-name 
   tags  = {
     "Name" = var.vm-name
   }

   #provisioner
   provisioner "remote-exec" {
     
     inline = [ 
        "sudo dnf install git httpd -y" ,
        "mkdir -p hello/terraform"


      ]

   }
   connection {
     type = "ssh"
     user = "ec2-user"
     host = self.public_ip
     #Content of private key data
     private_key = aws_key_pair.example 
   }
   
}

# Generate RSA 4096-bit key
resource "tls_private_key" "ec2_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Save the private key locally
resource "local_file" "private_key_file" {
  content  = tls_private_key.ec2_key.private_key_pem
  filename = "${path.module}/ec2-key.pem"
  file_permission = "0600"
}

# Save the public key locally (optional)
resource "local_file" "public_key_file" {
  content  = tls_private_key.ec2_key.public_key_openssh
  filename = "${path.module}/ec2-key.pub"
}

# Register the public key with AWS
resource "aws_key_pair" "ec2_key_pair" {
  key_name   = "ec2-key"
  public_key = tls_private_key.ec2_key.public_key_openssh
}