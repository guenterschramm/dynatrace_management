resource "dynatrace_metric_metadata" "GPUReservation" {
  display_name = "GPUReservation"
  metric_id    = "metric-cloud.aws.ecs.GPUReservation.By.ClusterName"
  unit         = "Percent"
}
