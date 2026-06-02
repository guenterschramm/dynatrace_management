resource "dynatrace_metric_metadata" "CPUUtilization" {
  display_name = "CPUUtilization"
  metric_id    = "metric-cloud.aws.dax.CPUUtilization.By.ClusterId"
  unit         = "Percent"
}
