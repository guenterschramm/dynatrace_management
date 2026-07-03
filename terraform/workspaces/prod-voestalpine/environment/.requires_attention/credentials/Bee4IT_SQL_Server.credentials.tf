# ATTENTION REST API didn't provide credential data
resource "dynatrace_credentials" "Bee4IT_SQL_Server" {
  name                         = "Bee4IT SQL Server"
  # allow_contextless_requests = false
  owner_access_only            = true
  password                     = "################"
  scopes                       = [ "EXTENSION_AUTHENTICATION" ]
  username                     = "################"
}
