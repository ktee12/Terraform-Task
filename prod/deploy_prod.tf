# EC2 instance for prod
module "aws_instance" {
  source = "../modules/compute"
  environment = "prod"  
  instance_count = 3  
  instance_type = "t3.large"
  vpc_security_group_ids = [module.security.sg_id]
  subnet_id = module.network.public_subnet_id 
  user_data = file("${path.module}/user-data.sh")
  
}

# vpc resource for prod
module "network" {
  source = "../modules/network"  
}

# security group resource for prod
module "security" {
  source = "../modules/security"
  vpc_id = module.network.vpc_id
}
