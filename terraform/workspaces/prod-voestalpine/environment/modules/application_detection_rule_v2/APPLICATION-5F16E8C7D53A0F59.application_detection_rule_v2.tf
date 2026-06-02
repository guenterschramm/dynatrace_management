resource "dynatrace_application_detection_rule_v2" "APPLICATION-5F16E8C7D53A0F59" {
  application_id = "APPLICATION-5F16E8C7D53A0F59"
  insert_after   = "vu9U3hXa3q0AAAABAB1idWlsdGluOnJ1bS53ZWIuYXBwLWRldGVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJGRjNzEwOWQyLTE0YTYtM2RhMy05YTU5LTdlZWU2MzQxNTZiYr7vVN4V2t6t"
  matcher        = "URL_CONTAINS"
  pattern        = "webservice.voestalpine.root.local/splaw_image/"
}
