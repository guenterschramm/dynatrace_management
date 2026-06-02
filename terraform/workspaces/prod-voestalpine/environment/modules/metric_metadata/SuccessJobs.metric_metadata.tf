resource "dynatrace_metric_metadata" "SuccessJobs" {
  display_name = "SuccessJobs"
  metric_id    = "metric-cloud.aws.emr_serverless.SuccessJobs.By.ApplicationId.ApplicationName"
  unit         = "Count"
}
