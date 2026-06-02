resource "dynatrace_metric_metadata" "scheduler_schedule_attempts_total" {
  display_name = "scheduler_schedule_attempts_total"
  metric_id    = "metric-cloud.aws.eks.scheduler_schedule_attempts_total.By.ClusterName"
  unit         = "Count"
}
