terraform {
  required_version = ">= 1.8.0"
  required_providers {
    dynatrace = {
      source  = "dynatrace-oss/dynatrace"
      version = ">= 1.88.0"
    }
  }
}

provider "dynatrace" {
  dt_env_url = var.environment_url
  api_token  = var.api_token
}
