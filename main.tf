terraform { 
  cloud { 
    
    organization = "vmoseng_certs" 

    workspaces { 
      name = "s3-state-bucket" 
    } 
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.87.0"
    }
  }

  required_version = ">= 1.2.0" 
}

provider "aws" {
    region = "eu-central-1"
    
    default_tags {
        tags = {
            env = "dev"
        }
    }
}