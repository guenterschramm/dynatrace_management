resource "dynatrace_credentials" "SnmpV3_credential" {
  name                         = "SnmpV3 credential"
  # allow_contextless_requests = false
  owner_access_only            = true
  scopes                       = [ "EXTENSION_AUTHENTICATION" ]
}
