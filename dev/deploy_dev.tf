module "aws_instance" {
  environment = "dev"
  source = "../modules/compute"
  count = 3  
  vpc_security_group_ids = [module.security.sg_id]
  subnet_id = module.network.public_subnet_id  
  user_data = <<-EOF
                #!/bin/bash
                echo "Hello World"
                EOF
  
}

module "network" {
  source = "../modules/network"
  
}

module "security" {
  source = "../modules/security"
  vpc_id = module.network.vpc_id
}

