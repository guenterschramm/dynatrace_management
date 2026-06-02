resource "dynatrace_attribute_masking" "http_response_headers" {
  enabled = true
  key     = "http.response.headers"
  masking = "MASK_ENTIRE_VALUE"
}
