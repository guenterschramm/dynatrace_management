resource "dynatrace_automation_scheduling_rule" "Last_working_day_of_the_week" {
  # description     = ""
  business_calendar = "979b356c-f8fa-4864-b220-9d455a8c28ce"
  title             = "Last working day of the week"
  recurrence {
    datestart = "2020-10-01"
    frequency = "WEEKLY"
    interval  = 1
    workdays  = "WORKING"
  }
}
