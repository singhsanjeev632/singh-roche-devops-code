


terraform {

  # backend "s3" {
  #   bucket = "sanjeev-terraform-state"
  #   key = "dev/sanjeev/terraform.tfstate"
  #   dynamodb_table = "sanjeev-roche-table1"
  #   region = "ap-southeast-2"
  #   encrypt = true
    
  # }
  # required_providers {
  #   aws = {
  #     source = "hashicorp/aws"
  #     version = "6.19.0"
  #   }
  # }
}

# provider "aws" {
#   # Configuration options
#  #region_location_info
#  region = "ap-southeast-2"
# }

provider "local" {
 
}





  

