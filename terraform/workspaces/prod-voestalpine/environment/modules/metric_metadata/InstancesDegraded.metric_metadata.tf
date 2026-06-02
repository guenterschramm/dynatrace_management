resource "dynatrace_metric_metadata" "InstancesDegraded" {
  display_name = "InstancesDegraded"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.InstancesDegraded.By.EnvironmentName"
  unit         = "Count"
}
