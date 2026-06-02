resource "dynatrace_web_app_auto_injection" "APPLICATION-1511292D0FDC055A" {
  application_id = "APPLICATION-1511292D0FDC055A"
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
