resource "dynatrace_automation_workflow" "Teams_Notification-Bee4IT" {
  # description          = ""
  type                   = "SIMPLE"
  actor                  = "db1a0258-d161-4101-9888-7c15a809a5bf"
  # guide                = ""
  hourly_execution_limit = 1000
  input                  = jsonencode({})
  # is_deployed          = true
  owner                  = "db1a0258-d161-4101-9888-7c15a809a5bf"
  owner_type             = "USER"
  # private              = true
  title                  = "Teams Notification - Bee4IT"
  tasks {
    task {
      name        = "send_pam_alert_notification"
      description = "Send messages and Adaptive Cards to Microsoft Teams channels"
      action      = "dynatrace.msteams:send-message"
      input       = jsonencode({
              "connectionId": "vu9U3hXa3q0AAAABACBhcHA6ZHluYXRyYWNlLm1zdGVhbXM6Y29ubmVjdGlvbgAGdGVuYW50AAZ0ZW5hbnQAJDYzYzI1OThmLTBjZGEtMzU5ZS05Y2I3LTk2NzI1MjY5Y2Q1Yr7vVN4V2t6t",
              "message": "{\n    \"type\":\"AdaptiveCard\",\n    \"body\":[\n       {\n          \"type\":\"ColumnSet\",\n          \"columns\":[\n             {\n                \"type\":\"Column\",\n                \"items\":[\n                   {\n                      \"type\":\"Image\",\n                      \"style\":\"default\",\n                      \"url\":\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGAAAABgBAMAAAFnsVqdAAABhGlDQ1BJQ0MgcHJvZmlsZQAAKJF9kTtIw1AUhv+mig8qDu0gopChOtlFRRxrFYpQIdQKrTqY3PQFTRqSFBdHwbXg4GOx6uDirKuDqyAIPkBcXZwUXaTEc5NCixgvHO7Hf+//c+65gNCoMM3qigOabpvpZELM5lbFnlf0IUw1irDMLGNOklLwXV/3CPD9Lsaz/O/9uQbUvMWAgEgcZ4ZpE28Qz2zaBud94ggrySrxOfGESQ0SP3Jd8fiNc9FlgWdGzEx6njhCLBY7WOlgVjI14mniqKrplC9kPVY5b3HWKjXW6pO/MJTXV5a5TjWCJBaxBAkiFNRQRgU2YrTrpFhI03nCxz/s+iVyKeQqg5FjAVVokF0/+B/8nq1VmJr0kkIJoPvFcT7GgJ5doFl3nO9jx2meAMFn4Epv+6sNYPaT9Hpbix4Bg9vAxXVbU/aAyx1g6MmQTdmVglRCoQC8n9E35YDwLdC/5s2tdY7TByBDs0rdAAeHwHiRstd93t3bObd/77Tm9wNvvXKl29U4SgAAAAlwSFlzAAALEwAACxMBAJqcGAAAAAd0SU1FB+cJEwsVBlqqt1oAAAAkUExURQAAABkZGRkZGRgYGBgYGBkZGRkZGRkZGRkZGRkZGRkZGf///yK9Q/4AAAAKdFJOUwAFC2JjY2T6+/xn0nzHAAAAAWJLR0QLH9fEwAAAAltJREFUWMPtlr1OxDAMx42QCnSiLEhsTKyMiCdAPAFjR9QJWE5iqgRi6CMwFXG6y/kpSZqkdRK714oPCUGW1v7753w2LgAgtgCQIyIYw5g5rrWtDfZhmrFO9MNFOs5nOUAs9aNBXAHsG63URpvju+nNZgkfLuebyVkZZwsZ2mSVHWCXDm1i/953g3ddjnN4xd5waWUDkTGuaZjp2xlgR4L+3Vv2vZu4GyYAjcqt0RLBSrk3WifAjpXywWjdOHbIQD9tsNNOjeIoSaDo2GoyakXnU5OZKroGNVkdBX3bH3peAbD+QAn8RIn8veL994WbEuIyiL8Dtz66vdM8VOiOLivgDwtkHvHOiVs6V4g63+UFvaEZJ3Qb7ZX1YrHA4ABkcce138JM8EdKTY9JJviJsAn8/Wc8komezwCQB0WRatr8BqQSliRZKo944LQojrlVx0OAPYpUjGCQYWupoJFLVtAI8sJGEvAvCWQ/vu3j/EJBHG40wYYXluSyDITzoUIHworeu1QoaVEnwiq4wvVV8kgB0ktcDpJqUPpvrRHqR4yUw/fcCKUoREp6ZzRCVaNICUy75bbsBcR2y2/yy8x4kRDjBWIkniVG4xliS3xCbI2PiCjelC9y7FIizn9v3ceR+0kcjwB44ganApa4wOmAIa5wDoDP7LUyAuA/8KcB/gPaUqJm17TfDsxepdF9eJ0HbGC3mQMoXd6zZjqgukKXEhKgXGFMCAFQfSGNiYeia2dSPDsPRJTjpxAqKuzbCJX8CIwTivlxGCMU+6MhE3y8TEjxEiHHa4I5u5sw/gNAGf9B+I394QAAAABJRU5ErkJggg==\",\n                      \"size\":\"small\"\n                   }\n                ],\n                \"width\":\"auto\"\n             },\n             {\n                \"type\":\"Column\",\n                \"items\":[\n                   {\n                      \"type\":\"TextBlock\",\n                      \"size\":\"medium\",\n                      \"weight\":\"bolder\",\n                      \"text\":\"Davis Problem\"\n                   }\n                ],\n                \"width\":\"stretch\"\n             }\n          ]\n       },\n       {\n          \"type\":\"FactSet\",\n          \"facts\":[\n             {\n                \"title\":\"Name\",\n                \"value\":\"{{ event()['event.name'] | default('Not available.', true)  }}\"\n             },\n             {\n                \"title\":\"Status\",\n                \"value\":\"{{ event()['event.status'] | default('Not available.', true)  }}\"\n             },\n             {\n                \"title\":\"Category\",\n                \"value\":\"{{ event()['event.category'] | default('Not available.', true)  }}\"\n             },\n             {\n                \"title\":\"Display ID\",\n                \"value\":\"{{ event()['display_id']  | default('Not available.', true) }}\"\n             },\n             {\n               \"title\":\"Effected Host\",\n               \"value\":\"{{ event()['host.name'] | default('Not available.', true) }}\"\n             }\n          ]\n       }\n    ],\n    \"actions\":[\n       {\n          \"type\":\"Action.OpenUrl\",\n          \"title\":\"Open in Dynatrace\",\n          \"url\":\"https://voestalpine.apps.dynatrace.com/ui/apps/dynatrace.davis.problems/problem/{{ event()['event.id'] }}\"\n       }\n    ],\n    \"$schema\":\"http://adaptivecards.io/schemas/adaptive-card.json\",\n    \"version\":\"1.4\"\n }"
        })
    }
  }
  trigger {
    event {
      # active = false
      config {
        davis_problem {
          analysis_ready   = true
          custom_filter    = "matchesValue(dt.security_context, \"Bee4IT\") and isNotNull(labels.alerting_profile)"
          on_problem_close = true
          categories {
            availability           = true
            custom                 = true
            error                  = true
            # info                 = false
            monitoring_unavailable = true
            resource               = true
            slowdown               = true
          }
        }
      }
    }
  }
}
