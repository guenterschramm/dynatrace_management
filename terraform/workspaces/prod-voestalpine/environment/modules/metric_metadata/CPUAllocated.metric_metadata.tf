resource "dynatrace_metric_metadata" "CPUAllocated" {
  display_name = "CPUAllocated"
  metric_id    = "metric-cloud.aws.emr_serverless.CPUAllocated.By.ApplicationId.ApplicationName.CapacityAllocationType.WorkerType"
  unit         = "Count"
}
