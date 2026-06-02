resource "dynatrace_attribute_allow_list" "http_request_headers" {
  enabled = true
  key     = "http.request.headers"
}
