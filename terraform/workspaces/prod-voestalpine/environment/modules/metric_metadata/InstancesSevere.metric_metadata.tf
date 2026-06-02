resource "dynatrace_metric_metadata" "InstancesSevere" {
  display_name = "InstancesSevere"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.InstancesSevere.By.EnvironmentName"
  unit         = "Count"
}
