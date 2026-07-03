resource "dynatrace_automation_scheduling_rule" "Every_working_day" {
  # description     = ""
  business_calendar = "ef87ca7a-e4cb-4327-a5f9-7ae8732a9e4d"
  title             = "Every working day"
  recurrence {
    datestart = "2020-10-01"
    frequency = "WEEKLY"
    interval  = 1
    workdays  = "WORKING"
  }
}
