resource "dynatrace_metric_metadata" "MaxStorageAllowed" {
  display_name = "MaxStorageAllowed"
  metric_id    = "metric-cloud.aws.emr_serverless.MaxStorageAllowed.By.ApplicationId.ApplicationName"
  unit         = "Gigabytes"
}
