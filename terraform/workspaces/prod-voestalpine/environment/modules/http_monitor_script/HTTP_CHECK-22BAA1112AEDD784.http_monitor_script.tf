resource "dynatrace_http_monitor_script" "HTTP_CHECK-22BAA1112AEDD784" {
  http_id = "HTTP_CHECK-22BAA1112AEDD784"
  script {
    request {
      description = "pam.voestalpine.net/"
      method      = "GET"
      url         = "https://pam.voestalpine.net/"
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
