resource "dynatrace_metric_metadata" "RunningJobs" {
  display_name = "RunningJobs"
  metric_id    = "metric-cloud.aws.emr_serverless.RunningJobs.By.ApplicationId.ApplicationName"
  unit         = "Count"
}
