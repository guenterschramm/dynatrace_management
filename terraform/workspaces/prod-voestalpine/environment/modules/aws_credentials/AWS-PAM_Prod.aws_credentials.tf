resource "dynatrace_aws_credentials" "AWS-PAM_Prod" {
  # credentials_enabled                 = true
  label                                 = "AWS - PAM Prod"
  partition_type                        = "AWS_CN"
  # running_on_dynatrace_infrastructure = false
  tagged_only                           = false
  authentication_data {
    account_id = "565198685549"
    iam_role   = "Dynatrace_monitoring_role"
  }
}
