module "aws_instance" {
  environment = "dev"
  source = "../modules/compute"
  count = 3  
  vpc_security_group_ids = [aws_security_group.sg1_dev.id]
  subnet_id = module.network.public_subnet_id  
  user_data = <<-EOF
                #!/bin/bash
                echo "Hello World"
                EOF
  
}

module "network" {
  source = "../modules/network"
  
}

resource "aws_security_group" "sg1_dev" {
    name = "sg1dev"
    vpc_id = module.network.vpc_id
    ingress {
        from_port = 8080
        to_port   = 65535
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
    Name = "Terraform Task - sg1_dev"
  }
}
