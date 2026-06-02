resource "dynatrace_metric_metadata" "SumOffsetLag" {
  display_name = "SumOffsetLag"
  metric_id    = "metric-cloud.aws.kafka.SumOffsetLag.By.Cluster_Name.Consumer_Group.Topic"
  unit         = "Count"
}
