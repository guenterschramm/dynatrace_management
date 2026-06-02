resource "dynatrace_metric_metadata" "InstancesOk" {
  display_name = "InstancesOk"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.InstancesOk.By.EnvironmentName"
  unit         = "Count"
}
