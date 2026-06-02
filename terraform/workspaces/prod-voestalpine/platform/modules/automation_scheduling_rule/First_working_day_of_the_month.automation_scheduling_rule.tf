resource "dynatrace_automation_scheduling_rule" "First_working_day_of_the_month" {
  # description     = ""
  business_calendar = "979b356c-f8fa-4864-b220-9d455a8c28ce"
  title             = "First working day of the month"
  recurrence {
    datestart = "2020-10-01"
    frequency = "MONTHLY"
    interval  = 1
    workdays  = "WORKING"
  }
}
