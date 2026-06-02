resource "dynatrace_web_app_auto_injection" "APPLICATION-C9710013E40585E6" {
  application_id = "APPLICATION-C9710013E40585E6"
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
