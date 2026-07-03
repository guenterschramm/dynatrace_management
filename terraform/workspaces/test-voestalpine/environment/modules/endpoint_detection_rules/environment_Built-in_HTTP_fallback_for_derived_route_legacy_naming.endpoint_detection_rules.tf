resource "dynatrace_endpoint_detection_rules" "environment_Built-in_HTTP_fallback_for_derived_route_legacy_naming" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACBidWlsdGluOmVuZHBvaW50LWRldGVjdGlvbi1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJDhiYmJjMDQzLTdkNGUtNGZhYy1iN2ZlLTZlMjZkNTExZTkyOL7vVN4V2t6t"
  scope        = "environment"
  rule {
    description            = "Restores previous url patternization endpoint naming when http.route was derived (not ingested). Example: GET /*"
    condition              = "span.kind == \"server\" and isNotNull(http.request.method) and supportability.is_http_route_derived == true"
    endpoint_name_template = "{http.request.method} /*"
    if_condition_matches   = "DETECT_REQUEST_ON_ENDPOINT"
    rule_name              = "[Built-in] HTTP fallback for derived route (legacy naming)"
  }
}
