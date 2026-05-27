resource "dynatrace_web_app_auto_injection" "APPLICATION-EA7C4B59F27D43EB" {
  application_id = "APPLICATION-EA7C4B59F27D43EB"
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
