resource "dynatrace_web_app_manual_insertion" "APPLICATION-63B1740C1E7F005A" {
  application_id = "APPLICATION-63B1740C1E7F005A"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = false
  }
}
