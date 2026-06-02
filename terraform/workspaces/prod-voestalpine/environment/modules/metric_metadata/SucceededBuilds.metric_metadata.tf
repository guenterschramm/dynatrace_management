resource "dynatrace_metric_metadata" "SucceededBuilds" {
  display_name = "SucceededBuilds"
  metric_id    = "metric-cloud.aws.codebuild.SucceededBuilds.By.ProjectName"
  unit         = "Count"
}
