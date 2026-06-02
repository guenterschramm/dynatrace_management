resource "dynatrace_key_user_action" "loading_incident_console" {
  name           = "loading: incident console"
  type           = "Load"
  application_id = "APPLICATION-63B1740C1E7F005A"
  domain         = "itsm.voestalpine.net"
}
