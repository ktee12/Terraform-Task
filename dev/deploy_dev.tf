module "aws_instance" {
  source = "../modules/compute"
  environment = "dev"  
  instance_count = 3  
  vpc_security_group_ids = [module.security.sg_id]
  subnet_id = module.network.public_subnet_id  
  user_data = file("${path.module}/user-data.sh")
  
}

module "network" {
  source = "../modules/network"  
}

module "security" {
  source = "../modules/security"
  vpc_id = module.network.vpc_id
}

