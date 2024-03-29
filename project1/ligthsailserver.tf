
resource "aws_lightsail_instance" "custom" {
  name              = "linux"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is my first terraform project</h1>' | sudo tee /var/www/html/index.html"
}

output "instance_ip" {
  value = aws_lightsail_instance.custom.public_ip_address
}

output "instance_ip1"  {
  value = aws_lightsail_instance.custom.private_ip_address
}

output "my-arn" {
  value = aws_lightsail_instance.custom.arn
} 