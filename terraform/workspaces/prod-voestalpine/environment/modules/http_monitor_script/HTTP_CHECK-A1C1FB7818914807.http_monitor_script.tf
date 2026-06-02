resource "dynatrace_http_monitor_script" "HTTP_CHECK-A1C1FB7818914807" {
  http_id = "HTTP_CHECK-A1C1FB7818914807"
  script {
    request {
      description = "pwportal.voestalpine.com"
      method      = "GET"
      url         = "https://pwportal.voestalpine.com/"
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
