resource "dynatrace_span_attribute" "mongodb_cluster_id" {
  key     = "mongodb.cluster_id"
  masking = "NOT_MASKED"
}
