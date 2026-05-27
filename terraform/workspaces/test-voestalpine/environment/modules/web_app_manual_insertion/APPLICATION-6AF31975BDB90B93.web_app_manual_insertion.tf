resource "dynatrace_web_app_manual_insertion" "APPLICATION-6AF31975BDB90B93" {
  application_id = "APPLICATION-6AF31975BDB90B93"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
