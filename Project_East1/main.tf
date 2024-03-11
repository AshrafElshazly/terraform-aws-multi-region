module "networks" {
  source    = "../modules/networks"
  region    = var.region
  ec2_sg_id = module.instances.ec2_sg_id
  az        = var.az
}

module "s3" {
  source = "../modules/s3"
  bucket = var.bucket
}

module "dynamodb" {
  source                = "../modules/dynamodb"
  dynamo_table_name     = var.dynamo_table_name
  dynamo_table_key      = var.dynamo_table_key
  dynamo_table_key_type = var.dynamo_table_key_type
}

module "instances" {
  source           = "../modules/instances"
  vpc_id           = module.networks.vpc_id
  public_subnet_id = module.networks.public_subnet_id
  ami              = var.ami
  key_name         = var.key_name
  depends_on       = [module.dynamodb]
}
