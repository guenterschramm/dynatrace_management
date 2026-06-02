resource "dynatrace_email_notification" "Webhosting_Service" {
  name                   = "Webhosting Service"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  cc                     = [ "guenter.schramm@voestalpine.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACRkNWFjOGU0MS02YWQ4LTM0ZGItOGI5Mi0zODk5OWExNmU3MjG-71TeFdrerQ"
  subject                = "Webhosting Alert - {State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "gerhard.mittermayr@voestalpine.com", "roman.greil.ext@voestalpine.com" ]
}
