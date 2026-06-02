resource "dynatrace_http_monitor_script" "HTTP_CHECK-4760A87AE03DCC95" {
  http_id = "HTTP_CHECK-4760A87AE03DCC95"
  script {
    request {
      description = "pcd.voestalpine.com/"
      method      = "GET"
      url         = "https://pcd.voestalpine.com/"
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
