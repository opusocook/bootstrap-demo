# Specify the provider and access details - By Default this uses AWS CLI Credentials if none are specified
provider "aws" {
  region = "${var.aws_region}"
}

# Create modules in line with local folder structure
module "Security_Groups" {
  source = "./Security_Groups"
}

module "Instances" {
  source = "./Instances"
  prod_sg_id = "${module.Security_Groups.prod_sg_id}"
}

