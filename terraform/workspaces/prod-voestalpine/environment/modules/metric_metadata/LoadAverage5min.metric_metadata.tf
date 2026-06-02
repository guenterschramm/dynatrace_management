resource "dynatrace_metric_metadata" "LoadAverage5min" {
  display_name = "LoadAverage5min"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.LoadAverage5min.By.EnvironmentName"
  unit         = "Count"
}
