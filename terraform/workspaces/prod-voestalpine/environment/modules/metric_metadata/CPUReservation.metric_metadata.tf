resource "dynatrace_metric_metadata" "CPUReservation" {
  display_name = "CPUReservation"
  metric_id    = "metric-cloud.aws.ecs.CPUReservation.By.ClusterName"
  unit         = "Percent"
}
