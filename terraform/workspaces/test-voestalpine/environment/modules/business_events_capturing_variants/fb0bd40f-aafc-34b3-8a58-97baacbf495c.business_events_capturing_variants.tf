resource "dynatrace_business_events_capturing_variants" "fb0bd40f-aafc-34b3-8a58-97baacbf495c" {
  content_type_matcher = "ENDS_WITH"
  content_type_value   = "/json"
  insert_after         = ""
  parser               = "JSON"
  scope                = "environment"
}
