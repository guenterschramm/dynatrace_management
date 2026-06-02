resource "dynatrace_application_detection_rule" "APPLICATION-EA92380C21E9BC8E_DOMAIN_MATCHES_itservicesprodweb_voestalpine_net" {
  application_identifier = "APPLICATION-EA92380C21E9BC8E"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "MATCHES"
    pattern                  = "itservicesprodweb.voestalpine.net"
  }
}
