resource "dynatrace_metric_metadata" "CPUUtilization_12" {
  display_name = "CPUUtilization"
  metric_id    = "metric-cloud.aws.ecs.CPUUtilization.By.ClusterName.ServiceName"
  unit         = "Percent"
}
