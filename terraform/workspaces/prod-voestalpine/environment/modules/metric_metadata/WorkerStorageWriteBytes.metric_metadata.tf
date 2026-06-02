resource "dynatrace_metric_metadata" "WorkerStorageWriteBytes" {
  display_name = "WorkerStorageWriteBytes"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerStorageWriteBytes.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Bytes"
}
