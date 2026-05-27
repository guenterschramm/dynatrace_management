terraform {
  required_version = ">= 1.8.0"
  required_providers {
    dynatrace = {
      source  = "dynatrace-oss/dynatrace"
      version = ">= 1.88.0"
    }
  }
}

# Account-management resources are added in later iterations.
# Provider authentication for account scope will be added together with IAM resources.
