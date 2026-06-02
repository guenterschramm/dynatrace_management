resource "dynatrace_web_app_manual_insertion" "APPLICATION-EA92380C21E9BC8E" {
  application_id = "APPLICATION-EA92380C21E9BC8E"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
