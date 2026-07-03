resource "dynatrace_automation_scheduling_rule" "First_working_day_of_the_week" {
  # description     = ""
  business_calendar = "ef87ca7a-e4cb-4327-a5f9-7ae8732a9e4d"
  title             = "First working day of the week"
  recurrence {
    datestart = "2020-10-01"
    frequency = "WEEKLY"
    interval  = 1
    workdays  = "WORKING"
  }
}
