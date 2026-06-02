resource "dynatrace_metric_metadata" "DownloadSourceDuration" {
  display_name = "DownloadSourceDuration"
  metric_id    = "metric-cloud.aws.codebuild.DownloadSourceDuration.By.ProjectName"
  unit         = "Seconds"
}
