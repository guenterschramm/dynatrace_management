resource "dynatrace_attribute_allow_list" "rsocket_route" {
  enabled = true
  key     = "rsocket.route"
}
