resource "dynatrace_metric_metadata" "BuildDuration" {
  display_name = "BuildDuration"
  metric_id    = "metric-cloud.aws.codebuild.BuildDuration.By.ProjectName"
  unit         = "Seconds"
}
