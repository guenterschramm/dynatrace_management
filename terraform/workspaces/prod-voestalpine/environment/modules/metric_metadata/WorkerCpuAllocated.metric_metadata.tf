resource "dynatrace_metric_metadata" "WorkerCpuAllocated" {
  display_name = "WorkerCpuAllocated"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerCpuAllocated.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Count"
}
