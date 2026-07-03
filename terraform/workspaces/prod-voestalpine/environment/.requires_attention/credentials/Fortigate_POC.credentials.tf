# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "Fortigate_POC" {
  name                         = "Fortigate POC"
  # allow_contextless_requests = false
  owner_access_only            = true
  password                     = "################"
  scopes                       = [ "EXTENSION_AUTHENTICATION" ]
  username                     = "################"
}
