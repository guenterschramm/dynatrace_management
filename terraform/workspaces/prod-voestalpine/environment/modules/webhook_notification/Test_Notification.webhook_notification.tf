resource "dynatrace_webhook_notification" "Test_Notification" {
  name                   = "Test Notification"
  active                 = false
  # insecure             = false
  notify_closed_problems = true
  # notify_event_merges  = false
  payload                = jsonencode({
      "AffectedEntityNames": "{ImpactedEntityNames}",
      "Application": "Bee4IT",
      "PID": "{PID}",
      "ProblemID": "{ProblemID}",
      "ProblemTitle": "{ProblemTitle}",
      "State": "{State}",
      "url": "{ProblemURL}"
    })
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ0MGZmMTg0ZS1hNmVmLTMwMjktYjYyNC05YWVmNGIyYTRiZjO-71TeFdrerQ"
  secret_url             = "***33cbf80c56d5839c***"
  # url                  = ""
  url_contains_secret    = true
}
