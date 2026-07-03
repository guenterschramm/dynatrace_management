# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "Cisco_Catalyst_Center" {
  name                         = "Cisco Catalyst Center"
  # allow_contextless_requests = false
  owner_access_only            = true
  password                     = "################"
  scopes                       = [ "EXTENSION_AUTHENTICATION" ]
  username                     = "################"
}
