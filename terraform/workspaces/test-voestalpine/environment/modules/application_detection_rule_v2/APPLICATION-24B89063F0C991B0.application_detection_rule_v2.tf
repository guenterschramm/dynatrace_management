resource "dynatrace_application_detection_rule_v2" "APPLICATION-24B89063F0C991B0" {
  application_id = "APPLICATION-24B89063F0C991B0"
  insert_after   = ""
  matcher        = "DOMAIN_MATCHES"
  pattern        = "q-ecm.voestalpine.net"
}
