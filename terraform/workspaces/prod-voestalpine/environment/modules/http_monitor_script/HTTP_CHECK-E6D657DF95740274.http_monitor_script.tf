resource "dynatrace_http_monitor_script" "HTTP_CHECK-E6D657DF95740274" {
  http_id = "HTTP_CHECK-E6D657DF95740274"
  script {
    request {
      description = "ecm-steel.voestalpine.net"
      method      = "GET"
      url         = "http://ecm-steel.voestalpine.net"
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
