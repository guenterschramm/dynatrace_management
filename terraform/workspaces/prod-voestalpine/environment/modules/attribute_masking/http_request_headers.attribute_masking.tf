resource "dynatrace_attribute_masking" "http_request_headers" {
  enabled = true
  key     = "http.request.headers"
  masking = "MASK_ENTIRE_VALUE"
}
