terraform{  
    required_version = "~> 1.7.0"

    required_providers {
        aws =  {
            source = "hashicorp/aws"
            version =  "~> 5.0"
        }
    }

    backend "s3" {
        bucket = ""
        key = ""
        region = ""
    }
}



provider "aws" {
  region = var.aws_deploy_region
}




