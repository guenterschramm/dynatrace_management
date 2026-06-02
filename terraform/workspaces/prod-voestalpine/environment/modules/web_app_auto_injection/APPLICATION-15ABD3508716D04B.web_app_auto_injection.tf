resource "dynatrace_web_app_auto_injection" "APPLICATION-15ABD3508716D04B" {
  application_id = "APPLICATION-15ABD3508716D04B"
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
