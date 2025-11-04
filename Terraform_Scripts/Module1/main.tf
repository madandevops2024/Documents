module "my_vpc" {
  source = "./modules/vpc"

  vpc_cidr           = "10.0.0.0/20"
  public_sub_1_cidr  = "10.0.1.0/24"
  private_sub_1_cidr = "10.0.2.0/24"
}


module "my_ec2" {
  source = "./modules/ec2"

  public_subnet_id = module.my_vpc.public_subnet_id
  public_sg_id     = module.my_vpc.public_sg_id
}