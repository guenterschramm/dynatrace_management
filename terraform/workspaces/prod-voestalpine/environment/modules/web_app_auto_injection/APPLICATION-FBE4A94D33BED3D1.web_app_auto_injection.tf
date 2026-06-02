resource "dynatrace_web_app_auto_injection" "APPLICATION-FBE4A94D33BED3D1" {
  application_id = "APPLICATION-FBE4A94D33BED3D1"
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
