resource "dynatrace_web_app_manual_insertion" "APPLICATION-0D3E3523E6F8B465" {
  application_id = "APPLICATION-0D3E3523E6F8B465"
  code_snippet {
    code_snippet_type = "SYNCHRONOUSLY"
  }
  javascript_tag {
    cache_duration        = "1"
    crossorigin_anonymous = true
  }
}
