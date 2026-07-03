resource "dynatrace_credentials" "Network_SNMP_v3" {
  name                         = "Network SNMP v3"
  # allow_contextless_requests = false
  owner_access_only            = true
  scopes                       = [ "EXTENSION_AUTHENTICATION" ]
}
