resource "dynatrace_metric_metadata" "RollingEstimatedTimeLagMax" {
  display_name = "RollingEstimatedTimeLagMax"
  metric_id    = "metric-cloud.aws.kafka.RollingEstimatedTimeLagMax.By.Cluster_Name.Consumer_Group.Topic"
  unit         = "Milliseconds"
}
