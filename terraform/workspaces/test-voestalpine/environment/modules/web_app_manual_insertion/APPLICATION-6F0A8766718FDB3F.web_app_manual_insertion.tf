resource "dynatrace_web_app_manual_insertion" "APPLICATION-6F0A8766718FDB3F" {
  application_id = "APPLICATION-6F0A8766718FDB3F"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
