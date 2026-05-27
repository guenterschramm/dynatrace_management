resource "dynatrace_web_app_auto_injection" "APPLICATION-F722C3E93DFB059A" {
  application_id = "APPLICATION-F722C3E93DFB059A"
  cache_control_headers {
    cache_control_headers = true
  }
  monitoring_code_source_section {
    code_source = "OneAgent"
  }
  snippet_format {
    snippet_format = "OneAgent JavaScript Tag"
  }
}
