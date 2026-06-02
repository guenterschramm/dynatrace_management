resource "dynatrace_metric_metadata" "QueuedDuration" {
  display_name = "QueuedDuration"
  metric_id    = "metric-cloud.aws.codebuild.QueuedDuration.By.ProjectName"
  unit         = "Seconds"
}
