resource "dynatrace_metric_metadata" "WorkerMemoryAllocated" {
  display_name = "WorkerMemoryAllocated"
  metric_id    = "metric-cloud.aws.emr_serverless.WorkerMemoryAllocated.By.ApplicationId.ApplicationName.CapacityAllocationType.JobId.JobName.WorkerType"
  unit         = "Gigabytes"
}
