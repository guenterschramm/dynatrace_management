resource "dynatrace_metric_metadata" "EstimatedMaxTimeLag" {
  display_name = "EstimatedMaxTimeLag"
  metric_id    = "metric-cloud.aws.kafka.EstimatedMaxTimeLag.By.Cluster_Name.Consumer_Group.Topic"
  unit         = "Milliseconds"
}
