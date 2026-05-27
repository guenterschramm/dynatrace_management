resource "dynatrace_web_app_auto_injection" "APPLICATION-0D3E3523E6F8B465" {
  application_id = "APPLICATION-0D3E3523E6F8B465"
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
