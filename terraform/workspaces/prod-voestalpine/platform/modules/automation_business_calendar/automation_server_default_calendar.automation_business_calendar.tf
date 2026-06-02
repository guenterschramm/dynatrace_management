resource "dynatrace_automation_business_calendar" "automation_server_default_calendar" {
  # description = ""
  title         = "automation_server_default_calendar"
  valid_from    = "2024-01-01"
  valid_to      = "2033-12-31"
  week_days     = [1, 2, 3, 4, 5]
  week_start    = 1
}
