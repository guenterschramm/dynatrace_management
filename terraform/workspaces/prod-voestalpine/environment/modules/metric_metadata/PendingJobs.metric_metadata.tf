resource "dynatrace_metric_metadata" "PendingJobs" {
  display_name = "PendingJobs"
  metric_id    = "metric-cloud.aws.emr_serverless.PendingJobs.By.ApplicationId.ApplicationName"
  unit         = "Count"
}
