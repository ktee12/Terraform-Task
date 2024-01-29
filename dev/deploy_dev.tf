# EC2 instance for dev
module "aws_instance" {
  source = "../modules/compute"
  environment = "dev"  
  instance_count = 3  
  vpc_security_group_ids = [module.security.sg_id]
  subnet_id = module.network.public_subnet_id  
  user_data = file("${path.module}/user-data.sh")
  
}

# vpc resource for dev
module "network" {
  source = "../modules/network"  
}

# security group resource for dev
module "security" {
  source = "../modules/security"
  vpc_id = module.network.vpc_id
}

