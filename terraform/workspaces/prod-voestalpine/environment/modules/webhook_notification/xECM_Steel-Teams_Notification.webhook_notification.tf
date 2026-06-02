resource "dynatrace_webhook_notification" "xECM_Steel-Teams_Notification" {
  name                   = "xECM Steel - Teams Notification"
  active                 = true
  # insecure             = false
  notify_closed_problems = true
  # notify_event_merges  = false
  payload                = jsonencode({
      "AffectedEntityNames": "{ImpactedEntityNames}",
      "Application": "xECM Steel",
      "PID": "{PID}",
      "ProblemID": "{ProblemID}",
      "ProblemTitle": "{ProblemTitle}",
      "State": "{State}",
      "url": "{ProblemURL}"
    })
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ2OTc5OTI2OC05NTc1LTM1MTAtYmJkNi1lM2E0Y2Y3ZWViZDW-71TeFdrerQ"
  secret_url             = "***5b83795314c92b76***"
  # url                  = ""
  url_contains_secret    = true
}
