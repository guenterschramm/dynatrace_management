resource "dynatrace_web_app_manual_insertion" "APPLICATION-EA7C4B59F27D43EB" {
  application_id = "APPLICATION-EA7C4B59F27D43EB"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
