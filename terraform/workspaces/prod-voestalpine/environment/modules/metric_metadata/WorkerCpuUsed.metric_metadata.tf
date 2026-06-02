resource "dynatrace_metric_metadata" "WorkerCpuUsed" {
  display_name = "WorkerCpuUsed"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerCpuUsed.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Count"
}
