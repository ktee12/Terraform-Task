# EC2 instance for prod
module "aws_instance" {
  environment = "prod"
  source = "../modules/compute"
  count = 3  
  instance_type = "t3.large"
  vpc_security_group_ids = [aws_security_group.sg1_prod.id]
  subnet_id = aws_subnet.public-subnet.id  
  user_data = <<-EOF
                #!/bin/bash
                echo "Hello World"
                EOF
  
}


resource "aws_security_group" "sg1_prod" {
    name = "sg1prod"
    vpc_id = aws_vpc.public-vpc.id
    ingress {
        from_port = 8080
        to_port   = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
    Name = "Terraform Task - sg1_prod"
  }
}
