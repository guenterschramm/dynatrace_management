resource "dynatrace_web_app_manual_insertion" "APPLICATION-1511292D0FDC055A" {
  application_id = "APPLICATION-1511292D0FDC055A"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
