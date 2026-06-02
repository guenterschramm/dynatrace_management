resource "dynatrace_http_monitor_script" "HTTP_CHECK-0ABCA01BB5BC9ADE" {
  http_id = "HTTP_CHECK-0ABCA01BB5BC9ADE"
  script {
    request {
      description = "xECM Corporate - Starting Page"
      method      = "GET"
      url         = "https://ecm.voestalpine.net"
      configuration {
        # accept_any_certificate = false
        follow_redirects         = true
      }
      validation {
        rule {
          type            = "httpStatusesList"
          # pass_if_found = false
          value           = ">=400"
        }
        rule {
          type            = "certificateExpiryDateConstraint"
          # pass_if_found = false
          value           = "30"
        }
      }
    }
  }
}
