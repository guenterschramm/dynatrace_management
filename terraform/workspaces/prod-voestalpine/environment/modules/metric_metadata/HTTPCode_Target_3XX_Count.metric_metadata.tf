resource "dynatrace_metric_metadata" "HTTPCode_Target_3XX_Count" {
  display_name = "HTTPCode_Target_3XX_Count"
  metric_id    = "metric-cloud.aws.ecs.HTTPCode_Target_3XX_Count.By.ClusterName.ServiceName.TargetDiscoveryName"
  unit         = "Count"
}
