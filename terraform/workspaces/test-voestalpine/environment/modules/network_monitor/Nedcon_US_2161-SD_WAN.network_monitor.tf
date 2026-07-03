resource "dynatrace_network_monitor" "Nedcon_US_2161-SD_WAN" {
  name          = "Nedcon US 2161 - SD WAN"
  description   = "Check devices availability"
  type          = "MULTI_PROTOCOL"
  # enabled     = true
  frequency_min = 15
  locations     = [ "SYNTHETIC_LOCATION-1AFC35FDE770B92C" ]
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
      name         = "Nedcon US 2161 - SD WAN"
      request_type = "ICMP"
      target_list  = [ "10.201.4.28", "10.201.4.27" ]
      properties = {
        "ICMP_IP_VERSION"           = "4"
        "EXECUTION_TIMEOUT"         = "PT1S"
        "ICMP_PACKET_SIZE"          = "32"
        "ICMP_NUMBER_OF_PACKETS"    = "1"
        "ICMP_TIMEOUT_FOR_REPLY"    = "PT1S"
        "ICMP_TIME_TO_LIVE"         = "64"
        "ICMP_DO_NOT_FRAGMENT_DATA" = "true"
      }
      constraints {
        constraint {
          type = "SUCCESS_RATE_PERCENT"
          properties = {
            "operator" = ">="
            "value"    = "80"
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
  tags {
    tag {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      source  = "USER"
      value   = "SD_Wan"
    }
    tag {
      context = "CONTEXTLESS"
      key     = "UCID"
      source  = "USER"
      value   = "nedcon_us_2161"
    }
  }
}
