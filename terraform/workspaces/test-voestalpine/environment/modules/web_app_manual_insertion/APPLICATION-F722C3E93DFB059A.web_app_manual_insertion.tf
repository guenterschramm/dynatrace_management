resource "dynatrace_web_app_manual_insertion" "APPLICATION-F722C3E93DFB059A" {
  application_id = "APPLICATION-F722C3E93DFB059A"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
