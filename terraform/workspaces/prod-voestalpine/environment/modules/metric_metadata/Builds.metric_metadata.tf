resource "dynatrace_metric_metadata" "Builds" {
  display_name = "Builds"
  metric_id    = "metric-cloud.aws.codebuild.Builds.By.ProjectName"
  unit         = "Count"
}
