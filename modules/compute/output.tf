# Module: Output
# public ip output
output "public_ip" {
  value = aws_instance.web_instance[*].public_ip
}

# ec2 tags output
output "ec2_tags" {
  value = aws_instance.web_instance[*].tags_all.Name
}
