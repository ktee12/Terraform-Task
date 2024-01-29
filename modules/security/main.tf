# Module: Security group
# Security group parameters
resource "aws_security_group" "sg" {
  name   = var.name
  vpc_id = var.vpc_id

  ingress {
    from_port   = var.from_port
    to_port     = var.to_port
    protocol    = var.protocol
    cidr_blocks = var.all_ip_cidr_blocks
  }
}