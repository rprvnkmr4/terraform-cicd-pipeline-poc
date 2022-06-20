resource "aws_instance" "OneServer" {
  ami           = ami-08d4ac5b634553e16
  instance_type = t2.micro
  key_name      = terraform-cicd
  count         = 1
  tags = {
    Name = aws-terraform-cicd-poc
  }
}

output "instance_ip_addr" {
  value       = aws_instance.OneServer.*.private_ip
  description = "The private IP address of the main server instance."
}

output "instance_ips" {
  value = aws_instance.OneServer.*.public_ip
}