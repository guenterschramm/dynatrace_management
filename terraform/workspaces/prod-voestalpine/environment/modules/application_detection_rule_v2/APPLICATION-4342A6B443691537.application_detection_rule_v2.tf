resource "dynatrace_application_detection_rule_v2" "APPLICATION-4342A6B443691537" {
  application_id = "APPLICATION-4342A6B443691537"
  insert_after   = "vu9U3hXa3q0AAAABAB1idWlsdGluOnJ1bS53ZWIuYXBwLWRldGVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJGRmMTFjODRkLTliZjEtMzlhYi1hMjAxLTA3MDQxMGE5YTJiNr7vVN4V2t6t"
  matcher        = "DOMAIN_CONTAINS"
  pattern        = "cwsecm.voestalpine.root.local"
}
