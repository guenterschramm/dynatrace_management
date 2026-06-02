resource "dynatrace_attribute_allow_list" "rsocket_request-type" {
  enabled = true
  key     = "rsocket.request-type"
}
