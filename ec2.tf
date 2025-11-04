resource "local_file" "IP" {
    content = "aws_instance.example.public_ip"
    filename = "myip.txt"

}