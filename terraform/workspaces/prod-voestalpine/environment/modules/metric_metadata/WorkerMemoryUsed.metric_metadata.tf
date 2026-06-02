resource "dynatrace_metric_metadata" "WorkerMemoryUsed" {
  display_name = "WorkerMemoryUsed"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerMemoryUsed.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Gigabytes"
}
