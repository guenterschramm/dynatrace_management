resource "dynatrace_email_notification" "PCD_PW_Portal" {
  name                   = "PCD / PW Portal"
  active                 = true
  body                   = "{ProblemDetailsHTML}"
  cc                     = [ "guenter.schramm@voestalpine.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACRhNjAxMThkMy05ZWM5LTMwZDEtOTI5NC1hZTYxOTg4Mjc3MTS-71TeFdrerQ"
  subject                = "PCD/PW Portal Alert - {State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "roman.greil.ext@voestalpine.com" ]
}
