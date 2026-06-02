resource "dynatrace_metric_metadata" "ReplicaWriteRejected" {
  display_name = "ReplicaWriteRejected"
  metric_id    = "metric-cloud.aws.opensearch_domain.ReplicaWriteRejected.By.ClientId.DomainName.NodeId"
  unit         = "Count"
}
