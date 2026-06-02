# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "q-ecm-steel_voestalpine_net" {
  name                         = "q-ecm-steel.voestalpine.net"
  # allow_contextless_requests = false
  password                     = "################"
  scopes                       = [ "SYNTHETIC" ]
  username                     = "################"
}
