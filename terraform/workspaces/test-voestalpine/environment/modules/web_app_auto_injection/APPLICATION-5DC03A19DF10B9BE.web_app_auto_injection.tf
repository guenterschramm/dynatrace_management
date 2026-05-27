resource "dynatrace_web_app_auto_injection" "APPLICATION-5DC03A19DF10B9BE" {
  application_id = "APPLICATION-5DC03A19DF10B9BE"
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
