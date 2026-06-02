resource "dynatrace_metric_metadata" "CPUUtilization_3" {
  display_name = "CPUUtilization"
  metric_id    = "metric-cloud.aws.ecs.CPUUtilization.By.ClusterName"
  unit         = "Percent"
}
