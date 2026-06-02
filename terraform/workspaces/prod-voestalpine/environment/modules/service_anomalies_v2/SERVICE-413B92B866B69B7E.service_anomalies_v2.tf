resource "dynatrace_service_anomalies_v2" "SERVICE-413B92B866B69B7E" {
  scope = "SERVICE-413B92B866B69B7E"
  failure_rate {
    enabled        = true
    detection_mode = "fixed"
    fixed_detection {
      sensitivity = "low"
      threshold   = 0
      over_alerting_protection {
        minutes_abnormal_state = 1
        requests_per_minute    = 1
      }
    }
  }
  load_drops {
    enabled = false
  }
  load_spikes {
    enabled = false
  }
  response_time {
    enabled        = true
    detection_mode = "auto"
    auto_detection {
      over_alerting_protection {
        minutes_abnormal_state = 1
        requests_per_minute    = 10
      }
      response_time_all {
        degradation_milliseconds = 100
        degradation_percent      = 50
      }
      response_time_slowest {
        slowest_degradation_milliseconds = 1000
        slowest_degradation_percent      = 100
      }
    }
  }
}
