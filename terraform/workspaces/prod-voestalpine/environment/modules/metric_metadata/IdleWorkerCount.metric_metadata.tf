resource "dynatrace_metric_metadata" "IdleWorkerCount" {
  display_name = "IdleWorkerCount"
  metric_id    = "metric-cloud.aws.emr_serverless.IdleWorkerCount.By.ApplicationId.ApplicationName.CapacityAllocationType.WorkerType"
  unit         = "Count"
}
