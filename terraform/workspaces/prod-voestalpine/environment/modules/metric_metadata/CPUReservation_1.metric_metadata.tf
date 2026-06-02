resource "dynatrace_metric_metadata" "CPUReservation_1" {
  display_name = "CPUReservation"
  metric_id    = "metric-cloud.aws.ecs.CPUReservation.By.ClusterName.ServiceName"
  unit         = "Percent"
}
