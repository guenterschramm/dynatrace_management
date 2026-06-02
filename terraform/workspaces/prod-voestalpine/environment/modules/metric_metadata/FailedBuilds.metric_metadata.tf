resource "dynatrace_metric_metadata" "FailedBuilds" {
  display_name = "FailedBuilds"
  metric_id    = "metric-cloud.aws.codebuild.FailedBuilds.By.ProjectName"
  unit         = "Count"
}
