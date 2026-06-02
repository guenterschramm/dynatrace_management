resource "dynatrace_metric_metadata" "PendingCreationWorkerCount" {
  display_name = "PendingCreationWorkerCount"
  metric_id    = "metric-cloud.aws.emr_serverless.PendingCreationWorkerCount.By.ApplicationId.ApplicationName.CapacityAllocationType.WorkerType"
  unit         = "Count"
}
