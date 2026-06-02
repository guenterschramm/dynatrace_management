resource "dynatrace_metric_metadata" "StorageAllocated" {
  display_name = "StorageAllocated"
  metric_id    = "metric-cloud.aws.emr_serverless.StorageAllocated.By.ApplicationId.ApplicationName.CapacityAllocationType.WorkerType"
  unit         = "Gigabytes"
}
