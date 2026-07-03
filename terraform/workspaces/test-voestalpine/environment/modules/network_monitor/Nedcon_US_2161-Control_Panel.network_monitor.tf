resource "dynatrace_network_monitor" "Nedcon_US_2161-Control_Panel" {
  name          = "Nedcon US 2161 - Control Panel 1"
  description   = " "
  type          = "MULTI_PROTOCOL"
  # enabled     = true
  frequency_min = 5
  locations     = [ "SYNTHETIC_LOCATION-1AFC35FDE770B92C" ]
  outage_handling {
    global_consecutive_outage_count_threshold = 1
    # global_outages                          = true
    # local_outages                           = false
  }
  performance_thresholds {
    # enabled = true
  }
  steps {
    step {
      name         = "Control Panel 1 ( 10.138.154.130)"
      request_type = "ICMP"
      target_list  = [ "10.138.154.130" ]
      constraints {
        constraint {
          type = "SUCCESS_RATE_PERCENT"
          properties = {
            "operator" = ">="
            "value"    = "80"
          }
        }
      }
      properties = {
        "ICMP_IP_VERSION"           = "4"
        "EXECUTION_TIMEOUT"         = "PT1S"
        "ICMP_PACKET_SIZE"          = "32"
        "ICMP_NUMBER_OF_PACKETS"    = "1"
        "ICMP_TIMEOUT_FOR_REPLY"    = "PT1S"
        "ICMP_TIME_TO_LIVE"         = "64"
        "ICMP_DO_NOT_FRAGMENT_DATA" = "true"
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
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      source  = "USER"
      value   = "Control_Panel"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "UCID"
      source  = "USER"
      value   = "nedcon_us_2161"
    }
  }
}
