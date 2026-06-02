resource "dynatrace_metric_metadata" "MemoryReservation_1" {
  display_name = "MemoryReservation"
  metric_id    = "metric-cloud.aws.ecs.MemoryReservation.By.ClusterName.ServiceName"
  unit         = "Percent"
}
