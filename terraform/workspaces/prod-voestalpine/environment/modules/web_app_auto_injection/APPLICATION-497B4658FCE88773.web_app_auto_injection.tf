resource "dynatrace_web_app_auto_injection" "APPLICATION-497B4658FCE88773" {
  application_id = "APPLICATION-497B4658FCE88773"
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
