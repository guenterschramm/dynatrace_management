resource "dynatrace_span_attribute" "mongodb_collection" {
  key     = "mongodb.collection"
  masking = "NOT_MASKED"
}
