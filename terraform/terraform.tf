terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.76.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
    null = {
      source  = "hashicorp/null"
      version = "3.2.3"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "4.0.6"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.5"
    }
    aap = {
      source  = "ansible/aap"
      version = ">= 1.1.2"
    }
  }
}
