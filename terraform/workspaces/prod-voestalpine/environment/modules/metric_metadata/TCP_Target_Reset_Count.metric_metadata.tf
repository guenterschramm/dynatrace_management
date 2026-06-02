resource "dynatrace_metric_metadata" "TCP_Target_Reset_Count" {
  display_name = "TCP_Target_Reset_Count"
  metric_id    = "metric-cloud.aws.networkelb.TCP_Target_Reset_Count.By.LoadBalancer"
  unit         = "Count"
}
