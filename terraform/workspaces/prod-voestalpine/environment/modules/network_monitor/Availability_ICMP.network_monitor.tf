resource "dynatrace_network_monitor" "Availability_ICMP" {
  name          = "Availability ICMP"
  description   = " "
  type          = "MULTI_PROTOCOL"
  enabled       = false
  frequency_min = 5
  locations     = [ "SYNTHETIC_LOCATION-7CF31B1ED762C751" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 2
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    # enabled = true
  }
  steps {
    step {
      name          = "Availability ICMP"
      request_type  = "ICMP"
      target_filter = "*"
      properties = {
        "ICMP_PACKET_SIZE"          = "32"
        "ICMP_NUMBER_OF_PACKETS"    = "1"
        "ICMP_TIMEOUT_FOR_REPLY"    = "PT1S"
        "ICMP_TIME_TO_LIVE"         = "64"
        "ICMP_DO_NOT_FRAGMENT_DATA" = "true"
        "ICMP_IP_VERSION"           = "4"
        "EXECUTION_TIMEOUT"         = "PT1S"
      }
      constraints {
        constraint {
          type = "SUCCESS_RATE_PERCENT"
          properties = {
            "value"    = "80"
            "operator" = ">="
          }
        }
      }
      request_configurations {
        request_configuration {
          constraints {
            constraint {
              type = "ICMP_SUCCESS_RATE_PERCENT"
              properties = {
                "value"    = "80"
                "operator" = ">="
              }
            }
          }
        }
      }
    }
  }
}
