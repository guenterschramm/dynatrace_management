resource "dynatrace_key_user_action" "loading_homepage" {
  name           = "loading: homepage"
  type           = "Load"
  application_id = "APPLICATION-63B1740C1E7F005A"
  domain         = "itsm.voestalpine.net"
}
