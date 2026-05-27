resource "dynatrace_key_user_action" "saml_login" {
  name           = "saml login"
  type           = "Xhr"
  application_id = "APPLICATION-6F0A8766718FDB3F"
  domain         = "pamt.voestalpine.net"
}
