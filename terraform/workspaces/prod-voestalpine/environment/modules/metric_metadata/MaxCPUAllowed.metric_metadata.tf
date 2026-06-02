resource "dynatrace_metric_metadata" "MaxCPUAllowed" {
  display_name = "MaxCPUAllowed"
  metric_id    = "metric-cloud.aws.emr_serverless.MaxCPUAllowed.By.ApplicationId.ApplicationName"
  unit         = "Count"
}
