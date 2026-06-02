# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "Citrix_Delivery_Controller_Viewer" {
  name                         = "Citrix Delivery Controller Viewer"
  # allow_contextless_requests = false
  owner_access_only            = true
  password                     = "################"
  scopes                       = [ "EXTENSION_AUTHENTICATION" ]
  username                     = "################"
}
