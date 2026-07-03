resource "dynatrace_automation_scheduling_rule" "Last_working_day_of_the_month" {
  # description     = ""
  business_calendar = "ef87ca7a-e4cb-4327-a5f9-7ae8732a9e4d"
  title             = "Last working day of the month"
  recurrence {
    datestart = "2020-10-01"
    frequency = "MONTHLY"
    interval  = 1
    workdays  = "WORKING"
  }
}
