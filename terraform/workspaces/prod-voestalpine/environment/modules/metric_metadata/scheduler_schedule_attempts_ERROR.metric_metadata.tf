resource "dynatrace_metric_metadata" "scheduler_schedule_attempts_ERROR" {
  display_name = "scheduler_schedule_attempts_ERROR"
  metric_id    = "metric-cloud.aws.eks.scheduler_schedule_attempts_ERROR.By.ClusterName"
  unit         = "Count"
}
