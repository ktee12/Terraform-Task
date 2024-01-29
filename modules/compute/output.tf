output "public_ip" {
  value = aws_instance.web_instance[*].public_ip
}

output "ec2_tags" {
  value = aws_instance.web_instance[*].tags_all.Name
}
