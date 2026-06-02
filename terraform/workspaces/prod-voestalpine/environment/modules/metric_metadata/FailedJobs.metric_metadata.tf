resource "dynatrace_metric_metadata" "FailedJobs" {
  display_name = "FailedJobs"
  metric_id    = "metric-cloud.aws.emr_serverless.FailedJobs.By.ApplicationId.ApplicationName"
  unit         = "Count"
}
