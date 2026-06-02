resource "dynatrace_metric_metadata" "ProvisioningDuration" {
  display_name = "ProvisioningDuration"
  metric_id    = "metric-cloud.aws.codebuild.ProvisioningDuration.By.ProjectName"
  unit         = "Seconds"
}
