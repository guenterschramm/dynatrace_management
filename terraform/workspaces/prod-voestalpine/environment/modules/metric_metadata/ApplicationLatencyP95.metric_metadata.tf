resource "dynatrace_metric_metadata" "ApplicationLatencyP95" {
  display_name = "ApplicationLatencyP95"
  metric_id    = "metric-cloud.aws.elasticbeanstalk.ApplicationLatencyP95.By.EnvironmentName"
  unit         = "Seconds"
}
