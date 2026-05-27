resource "dynatrace_application_detection_rule" "APPLICATION-0D3E3523E6F8B465_DOMAIN_CONTAINS_q-itservicesprodweb_voestalpine_net" {
  application_identifier = "APPLICATION-0D3E3523E6F8B465"
  filter_config {
    application_match_target = "DOMAIN"
    application_match_type   = "CONTAINS"
    pattern                  = "q-itservicesprodweb.voestalpine.net"
  }
}
