resource "dynatrace_metric_metadata" "PostBuildDuration" {
  display_name = "PostBuildDuration"
  metric_id    = "metric-cloud.aws.codebuild.PostBuildDuration.By.ProjectName"
  unit         = "Seconds"
}
