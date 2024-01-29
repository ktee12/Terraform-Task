# EC2 instance module
resource "aws_instance" "web_instance" {
  count                       = var.instance_count
  ami                         = var.ami
  instance_type               = var.instance_type
  vpc_security_group_ids      = var.vpc_security_group_ids
  subnet_id                   = var.subnet_id
  associate_public_ip_address = var.associate_public_ip_address

  user_data                   = var.user_data
  user_data_replace_on_change = var.user_data_replace_on_change

  tags = {
    Name = "${var.business_divsion}-web${count.index + 1}_${var.environment}"
  }
}
