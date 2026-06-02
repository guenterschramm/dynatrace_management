resource "dynatrace_metric_metadata" "MemoryAllocated" {
  display_name = "MemoryAllocated"
  metric_id    = "metric-cloud.aws.emr_serverless.MemoryAllocated.By.ApplicationId.ApplicationName.CapacityAllocationType.WorkerType"
  unit         = "Gigabytes"
}
