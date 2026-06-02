resource "dynatrace_update_windows" "xECM_Mainteance_18_11" {
  name       = "xECM Mainteance 18.11.2025"
  enabled    = true
  recurrence = "ONCE"
  once_recurrence {
    recurrence_range {
      end   = "2025-11-18T21:00:00+01:00"
      start = "2025-11-18T17:00:00+01:00"
    }
  }
}
