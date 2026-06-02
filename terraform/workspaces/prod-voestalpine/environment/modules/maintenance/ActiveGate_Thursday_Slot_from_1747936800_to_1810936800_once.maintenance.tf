resource "dynatrace_maintenance" "ActiveGate_Thursday_Slot_from_1747936800_to_1810936800_once" {
  enabled = true
  filters {
    filter {
      entity_type = "APM_SECURITY_GATEWAY"
    }
  }
  general_properties {
    name              = "ActiveGate Thursday Slot"
    type              = "PLANNED"
    disable_synthetic = false
    suppression       = "DETECT_PROBLEMS_AND_ALERT"
  }
  schedule {
    type = "ONCE"
    once_recurrence {
      end_time   = "2027-05-21T22:00:00"
      start_time = "2025-05-22T18:00:00"
      time_zone  = "Europe/Vienna"
    }
  }
}
