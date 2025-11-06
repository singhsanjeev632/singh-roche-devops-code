terraform {

  backend "s3" {
    bucket = "sanju-roche-terraform-bucket"
    key = "dev/sanju/terraform.tfstate"
    dynamodb_table = "sanju-roche-table1"
    region = "ap-southeast-2"   
    encrypt = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }
}

provider "aws" {
  # Configuration options
  # region location info 
  region = "ap-southeast-2"
}

# calling module 

module "my-sanju-module-ec2" {
    source = "./modules/ec2"
    ashu-ami-id = "ami-0a25a306450a2cba3"
    vm-name = "sanju-vmby-module"
    vm-size = "t2.nano"
    ec2-key-name = "sanjukeyby-mode"
    private-key-algo = "RSA"
    key-size = 4096
    my-vpc-id = "vpc-02d56e9aa1ce2f114"
    my-sec-group-name = "sanju-bymode-sec"
    

  
}