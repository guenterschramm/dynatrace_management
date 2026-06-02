resource "dynatrace_metric_metadata" "RootFilesystemUtil" {
  display_name = "RootFilesystemUtil"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.RootFilesystemUtil.By.EnvironmentName"
  unit         = "Percent"
}
