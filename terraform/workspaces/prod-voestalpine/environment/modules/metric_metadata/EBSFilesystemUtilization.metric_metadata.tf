resource "dynatrace_metric_metadata" "EBSFilesystemUtilization" {
  display_name = "EBSFilesystemUtilization"
  metric_id    = "metric-cloud.aws.ecs.EBSFilesystemUtilization.By.ClusterName.ServiceName"
  unit         = "Percent"
}
