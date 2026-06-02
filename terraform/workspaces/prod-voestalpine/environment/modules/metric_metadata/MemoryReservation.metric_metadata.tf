resource "dynatrace_metric_metadata" "MemoryReservation" {
  display_name = "MemoryReservation"
  metric_id    = "metric-cloud.aws.ecs.MemoryReservation.By.ClusterName"
  unit         = "Percent"
}
