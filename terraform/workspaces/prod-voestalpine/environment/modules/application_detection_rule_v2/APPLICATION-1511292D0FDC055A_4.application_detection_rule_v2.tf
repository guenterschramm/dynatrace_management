resource "dynatrace_application_detection_rule_v2" "APPLICATION-1511292D0FDC055A_4" {
  application_id = "APPLICATION-1511292D0FDC055A"
  insert_after   = "vu9U3hXa3q0AAAABAB1idWlsdGluOnJ1bS53ZWIuYXBwLWRldGVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJGE0OTM0ODEyLTMzODktMzZmZC05ZjUwLWNkZjVlNmQ3YzI5Mb7vVN4V2t6t"
  matcher        = "DOMAIN_CONTAINS"
  pattern        = "cwsecm-steel.voestalpine.root.local"
}
