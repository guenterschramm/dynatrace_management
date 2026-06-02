resource "dynatrace_metric_metadata" "TCP_ELB_Reset_Count" {
  display_name = "TCP_ELB_Reset_Count"
  metric_id    = "metric-cloud.aws.networkelb.TCP_ELB_Reset_Count.By.LoadBalancer"
  unit         = "Count"
}
