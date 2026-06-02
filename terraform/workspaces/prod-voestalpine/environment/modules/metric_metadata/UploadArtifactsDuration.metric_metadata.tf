resource "dynatrace_metric_metadata" "UploadArtifactsDuration" {
  display_name = "UploadArtifactsDuration"
  metric_id    = "metric-cloud.aws.codebuild.UploadArtifactsDuration.By.ProjectName"
  unit         = "Seconds"
}
