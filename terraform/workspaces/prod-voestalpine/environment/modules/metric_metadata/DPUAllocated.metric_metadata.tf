resource "dynatrace_metric_metadata" "DPUAllocated" {
  display_name = "DPUAllocated"
  metric_id    = "metric-cloud.aws.athena.DPUAllocated.By.Capacity_Reservation"
  unit         = "Count"
}
