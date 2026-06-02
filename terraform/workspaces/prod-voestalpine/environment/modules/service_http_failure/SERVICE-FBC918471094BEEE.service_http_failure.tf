resource "dynatrace_service_http_failure" "SERVICE-FBC918471094BEEE" {
  enabled    = true
  service_id = "SERVICE-FBC918471094BEEE"
  broken_links {
    http_404_not_found_failures = false
  }
  http_response_codes {
    client_side_errors                        = "400-599"
    fail_on_missing_response_code_client_side = false
    fail_on_missing_response_code_server_side = false
    server_side_errors                        = "500-599,401,422"
  }
}
