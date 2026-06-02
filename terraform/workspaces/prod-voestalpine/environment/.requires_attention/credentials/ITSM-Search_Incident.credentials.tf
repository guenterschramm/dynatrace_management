# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "ITSM-Search_Incident" {
  name                         = "ITSM - Search Incident"
  # allow_contextless_requests = false
  owner_access_only            = true
  password                     = "################"
  scopes                       = [ "SYNTHETIC" ]
  username                     = "################"
}
