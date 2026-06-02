resource "dynatrace_business_events_capturing_variants" "_4e9f2232-656a-3c0f-a283-062ec4f3b826" {
  content_type_matcher = "ENDS_WITH"
  content_type_value   = "/json"
  insert_after         = ""
  parser               = "JSON"
  scope                = "environment"
}
