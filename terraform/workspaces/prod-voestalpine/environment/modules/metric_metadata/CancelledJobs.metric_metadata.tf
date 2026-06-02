resource "dynatrace_metric_metadata" "CancelledJobs" {
  display_name = "CancelledJobs"
  metric_id    = "metric-cloud.aws.emr_serverless.CancelledJobs.By.ApplicationId.ApplicationName"
  unit         = "Count"
}
