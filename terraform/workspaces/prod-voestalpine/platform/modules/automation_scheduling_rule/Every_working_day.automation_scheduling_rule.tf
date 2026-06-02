resource "dynatrace_automation_scheduling_rule" "Every_working_day" {
  # description     = ""
  business_calendar = "979b356c-f8fa-4864-b220-9d455a8c28ce"
  title             = "Every working day"
  recurrence {
    datestart = "2020-10-01"
    frequency = "WEEKLY"
    interval  = 1
    workdays  = "WORKING"
  }
}
