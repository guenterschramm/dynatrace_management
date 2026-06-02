resource "dynatrace_email_notification" "PAM" {
  name                   = "PAM"
  active                 = true
  body                   =<<-EOT
    {ProblemDetailsHTML} 
    
    {ImpactedEntityNames}
    
    {Tags[[AWS]Name]}
  EOT
  cc                     = [ "robert.traxler@voestalpine.com", "guenter.schramm@voestalpine.com" ]
  notify_closed_problems = true
  profile                = "vu9U3hXa3q0AAAABABhidWlsdGluOmFsZXJ0aW5nLnByb2ZpbGUABnRlbmFudAAGdGVuYW50ACQ4MDEwYjdiZS1mZGIxLTMxMTctODhhMy1iMTI1NTdkZDQwZGK-71TeFdrerQ"
  subject                = "PAM Alert - {State} Problem {ProblemID}: {ImpactedEntity}"
  to                     = [ "pam@voestalpine.com" ]
}
