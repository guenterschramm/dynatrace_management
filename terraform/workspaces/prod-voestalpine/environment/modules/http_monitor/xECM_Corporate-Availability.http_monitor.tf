resource "dynatrace_http_monitor" "xECM_Corporate-Availability" {
  name                   = "xECM Corporate - Availability"
  enabled                = true
  frequency              = 5
  locations              = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  manually_assigned_apps = [ "APPLICATION-4342A6B443691537" ]
  anomaly_detection {
    loading_time_thresholds {
      # enabled = false
    }
    outage_handling {
      global_outage    = true
      # local_outage   = false
      # retry_on_error = false
      global_outage_policy {
        consecutive_runs = 3
      }
    }
  }
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
