resource "dynatrace_metric_metadata" "MaxMemoryAllowed" {
  display_name = "MaxMemoryAllowed"
  metric_id    = "metric-cloud.aws.emr_serverless.MaxMemoryAllowed.By.ApplicationId.ApplicationName"
  unit         = "Gigabytes"
}
