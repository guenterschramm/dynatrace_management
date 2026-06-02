resource "dynatrace_metric_metadata" "TotalWorkerCount" {
  display_name = "TotalWorkerCount"
  metric_id    = "metric-cloud.aws.emr_serverless.TotalWorkerCount.By.ApplicationId.ApplicationName.CapacityAllocationType.WorkerType"
  unit         = "Count"
}
