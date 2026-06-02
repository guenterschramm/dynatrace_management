resource "dynatrace_service_anomalies_v2" "environment" {
  scope = "environment"
  failure_rate {
    enabled        = true
    detection_mode = "auto"
    auto_detection {
      absolute_increase = 0
      relative_increase = 50
      over_alerting_protection {
        minutes_abnormal_state = 1
        requests_per_minute    = 10
      }
    }
  }
  load_drops {
    enabled = false
  }
  load_spikes {
    enabled                = true
    load_spike_percent     = 200
    minutes_abnormal_state = 1
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
