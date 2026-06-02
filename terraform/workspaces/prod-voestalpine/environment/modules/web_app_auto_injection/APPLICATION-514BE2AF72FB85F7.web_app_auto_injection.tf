resource "dynatrace_web_app_auto_injection" "APPLICATION-514BE2AF72FB85F7" {
  application_id = "APPLICATION-514BE2AF72FB85F7"
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
