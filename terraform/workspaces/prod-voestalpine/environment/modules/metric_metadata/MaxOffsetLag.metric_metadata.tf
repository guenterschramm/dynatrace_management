resource "dynatrace_metric_metadata" "MaxOffsetLag" {
  display_name = "MaxOffsetLag"
  metric_id    = "metric-cloud.aws.kafka.MaxOffsetLag.By.Cluster_Name.Consumer_Group.Topic"
  unit         = "Count"
}
