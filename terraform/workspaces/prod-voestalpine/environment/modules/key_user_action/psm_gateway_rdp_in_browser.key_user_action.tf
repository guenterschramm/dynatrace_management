resource "dynatrace_key_user_action" "psm_gateway_rdp_in_browser" {
  name           = "psm_gateway (rdp in browser)"
  type           = "Load"
  application_id = "APPLICATION-8E8732CD12CF7B8A"
  domain         = "pamhtmlgw.voestalpine.net"
}
