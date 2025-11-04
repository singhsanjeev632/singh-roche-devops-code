# public ip of my ec2 vm


output "my-ec2-publicIP" {
  value = aws_instance.example.public_ip
}


# ex=c2 machine instance if

output "my-ec2-ID" {

    value = aws_instance.example.id
  
}