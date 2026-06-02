resource "dynatrace_attribute_allow_list" "mongodb_cluster_id" {
  enabled = true
  key     = "mongodb.cluster_id"
}
