resource "dynatrace_maintenance" "Bee4IT_every_last_Tuesday_of_the_month_from_1753812000_to_1753826400_once" {
  enabled = true
  filters {
    filter {
      management_zones = [ "vu9U3hXa3q0AAAABABhidWlsdGluOm1hbmFnZW1lbnQtem9uZXMABnRlbmFudAAGdGVuYW50ACQwYjI1YjA4ZS1iZDkzLTNkMzQtYjJmYy03NzlhYzMwMjljOGW-71TeFdrerQ" ]
    }
  }
  general_properties {
    name              = "Bee4IT every last Tuesday of the month"
    type              = "PLANNED"
    disable_synthetic = false
    suppression       = "DONT_DETECT_PROBLEMS"
  }
  schedule {
    type = "ONCE"
    once_recurrence {
      end_time   = "2025-07-29T22:00:00"
      start_time = "2025-07-29T18:00:00"
      time_zone  = "Europe/Vienna"
    }
  }
}
