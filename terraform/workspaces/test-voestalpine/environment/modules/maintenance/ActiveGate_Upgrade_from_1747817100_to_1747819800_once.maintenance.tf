resource "dynatrace_maintenance" "ActiveGate_Upgrade_from_1747817100_to_1747819800_once" {
  enabled = true
  general_properties {
    name              = "ActiveGate Upgrade"
    type              = "PLANNED"
    disable_synthetic = true
    suppression       = "DETECT_PROBLEMS_AND_ALERT"
  }
  schedule {
    type = "ONCE"
    once_recurrence {
      end_time   = "2025-05-21T09:30:00"
      start_time = "2025-05-21T08:45:00"
      time_zone  = "Europe/Vienna"
    }
  }
}
