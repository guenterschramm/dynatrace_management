resource "dynatrace_metric_metadata" "InstancesWarning" {
  display_name = "InstancesWarning"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.InstancesWarning.By.EnvironmentName"
  unit         = "Count"
}
