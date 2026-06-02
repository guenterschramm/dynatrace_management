resource "dynatrace_metric_metadata" "RunningWorkerCount" {
  display_name = "RunningWorkerCount"
  metric_id    = "metric-cloud.aws.emr_serverless.RunningWorkerCount.By.ApplicationId.ApplicationName.CapacityAllocationType.WorkerType"
  unit         = "Count"
}
