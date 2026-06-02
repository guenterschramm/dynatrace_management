resource "dynatrace_metric_metadata" "WorkerStorageReadBytes" {
  display_name = "WorkerStorageReadBytes"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerStorageReadBytes.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Bytes"
}
