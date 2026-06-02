resource "dynatrace_attribute_allow_list" "mongodb_collection" {
  enabled = true
  key     = "mongodb.collection"
}
