# public ip of my ec2 vm


output "my-ec2-publicIP" {
  value = aws_instance.example.public_ip
}


# ex=c2 machine instance if

output "my-ec2-ID" {

    value = aws_instance.example.id
  
}


# Storing data in local sysytem

resource "local_file" "sanjeev-data" {
  content = aws_instance.example.public_ip
  filename = "${path.module}/myipNew.txt"

  #Making manual dependecy 
  depends_on = [ aws_instance.example ]

}


output "private_key_file" {
  description = "Path to the private key file"
  value       = "${path.module}/ec2-key.pem"
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.example.public_ip
}
