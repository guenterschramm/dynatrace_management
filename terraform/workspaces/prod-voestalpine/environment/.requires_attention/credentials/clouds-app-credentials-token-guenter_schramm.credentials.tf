# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "clouds-app-credentials-token-guenter_schramm" {
  name                       = "clouds-app-credentials-token-guenter.schramm"
  allow_contextless_requests = true
  owner_access_only          = true
  scopes                     = [ "APP_ENGINE" ]
  token                      = "################"
}
