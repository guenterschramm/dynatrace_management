resource "dynatrace_application_detection_rule_v2" "APPLICATION-48AC063F55531439_2" {
  application_id = "APPLICATION-48AC063F55531439"
  insert_after   = "vu9U3hXa3q0AAAABAB1idWlsdGluOnJ1bS53ZWIuYXBwLWRldGVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJDRjY2UwZGY4LWI1NzEtMzUzMS1iYWYzLWI0YTAyODNjNTFjNL7vVN4V2t6t"
  matcher        = "URL_CONTAINS"
  pattern        = "sqm-rportal.voestalpine.net/rportal"
}
