resource "dynatrace_http_monitor_script" "HTTP_CHECK-F117A4206441C777" {
  http_id = "HTTP_CHECK-F117A4206441C777"
  script {
    request {
      description = "Mitarbeiter Aktien"
      method      = "GET"
      url         = "https://mab-aktien.voestalpine.com/"
      configuration {
        accept_any_certificate = true
        follow_redirects       = true
      }
      validation {
        rule {
          type            = "httpStatusesList"
          # pass_if_found = false
          value           = ">=400"
        }
      }
    }
  }
}
