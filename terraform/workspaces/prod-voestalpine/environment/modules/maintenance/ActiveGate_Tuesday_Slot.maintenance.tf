resource "dynatrace_maintenance" "ActiveGate_Tuesday_Slot" {
  enabled = true
  filters {
    filter {
      entity_type = "APM_SECURITY_GATEWAY"
    }
  }
  general_properties {
    name              = "ActiveGate Tuesday Slot"
    type              = "PLANNED"
    disable_synthetic = false
    suppression       = "DETECT_PROBLEMS_AND_ALERT"
  }
  schedule {
    type = "WEEKLY"
    weekly_recurrence {
      day_of_week = "TUESDAY"
      recurrence_range {
        end_date   = "2027-05-22"
        start_date = "2025-05-21"
      }
      time_window {
        end_time   = "11:00:00"
        start_time = "09:00:00"
        time_zone  = "Europe/Vienna"
      }
    }
  }
}
