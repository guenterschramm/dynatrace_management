resource "dynatrace_web_app_auto_injection" "APPLICATION-EA92380C21E9BC8E" {
  application_id = "APPLICATION-EA92380C21E9BC8E"
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
