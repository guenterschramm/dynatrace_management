resource "dynatrace_attribute_allow_list" "http_response_headers" {
  enabled = true
  key     = "http.response.headers"
}
