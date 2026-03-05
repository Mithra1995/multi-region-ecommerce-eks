module "vpc" {
  source = "../../vpc"

  vpc_name = "ecom-vpc-us"
  cidr     = "10.0.0.0/16"

  azs = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c"
  ]

  public_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24",
    "10.0.3.0/24"
  ]

  private_subnets = [
    "10.0.101.0/24",
    "10.0.102.0/24",
    "10.0.103.0/24"
  ]

  tags = {
    Project = "multi-region-ecommerce"
    Env     = "dev"
  }
}
module "eks" {
  source = "../../eks"

  cluster_name    = "ecom-eks-us"
  cluster_version = "1.29"

  vpc_id          = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets

  tags = {
    Project = "multi-region-ecommerce"
    Env     = "dev"
  }
}
