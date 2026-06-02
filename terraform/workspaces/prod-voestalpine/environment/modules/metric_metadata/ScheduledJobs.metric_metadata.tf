resource "dynatrace_metric_metadata" "ScheduledJobs" {
  display_name = "ScheduledJobs"
  metric_id    = "metric-cloud.aws.emr_serverless.ScheduledJobs.By.ApplicationId.ApplicationName"
  unit         = "Count"
}
