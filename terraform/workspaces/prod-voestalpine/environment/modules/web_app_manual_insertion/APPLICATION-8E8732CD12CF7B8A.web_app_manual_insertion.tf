resource "dynatrace_web_app_manual_insertion" "APPLICATION-8E8732CD12CF7B8A" {
  application_id = "APPLICATION-8E8732CD12CF7B8A"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
