resource "dynatrace_metric_metadata" "WorkerEphemeralStorageUsed" {
  display_name = "WorkerEphemeralStorageUsed"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerEphemeralStorageUsed.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Gigabytes"
}
