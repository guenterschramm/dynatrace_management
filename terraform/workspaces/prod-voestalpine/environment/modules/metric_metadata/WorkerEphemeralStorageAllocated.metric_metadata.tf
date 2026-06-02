resource "dynatrace_metric_metadata" "WorkerEphemeralStorageAllocated" {
  display_name = "WorkerEphemeralStorageAllocated"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerEphemeralStorageAllocated.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Gigabytes"
}
