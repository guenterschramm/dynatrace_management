resource "dynatrace_alerting" "Virtualization_Alerts" {
  name            = "Virtualization Alerts"
  management_zone = "vu9U3hXa3q0AAAABABhidWlsdGluOm1hbmFnZW1lbnQtem9uZXMABnRlbmFudAAGdGVuYW50ACQwZGZmZmZhZC1kMDRjLTM5ZjctYWM5YS1kMTM4MTZhMzg0ZWS-71TeFdrerQ"
  filters {
    filter {
      predefined {
        type     = "PROCESS_NA_HIGH_CONN_FAIL_RATE"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "EC2_HIGH_CPU"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_HOST_DISK_QUEUE_SLOW"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_HOST_DATASTORE_LOW_DISK_SPACE"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_VM_IMPACT_HOST_MEMORY_SATURATION"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_VM_IMPACT_HOST_CPU_SATURATION"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_HOST_DISK_SLOW"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_GUEST_CPU_LIMIT_REACHED"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_HOST_NETWORK_PROBLEMS"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_HOST_MEMORY_SATURATION"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_GUEST_ACTIVE_SWAP_WAIT"
        # negate = false
      }
    }
    filter {
      predefined {
        type     = "ESXI_HOST_CPU_SATURATION"
        # negate = false
      }
    }
  }
  rules {
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "AVAILABILITY"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "CUSTOM_ALERT"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "ERRORS"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "MONITORING_UNAVAILABLE"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "PERFORMANCE"
    }
    rule {
      delay_in_minutes = 30
      include_mode     = "NONE"
      severity_level   = "RESOURCE_CONTENTION"
    }
  }
}
