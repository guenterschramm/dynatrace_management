resource "dynatrace_iam_policy_boundary" "policy_investion_rum" {
  name  = "policy_investion_rum"
  query =<<-EOT
    storage:frontend.name MATCH ("xECM_Steel*");
    //storage:dt.security_context startsWith 'PAM';
  EOT
}
