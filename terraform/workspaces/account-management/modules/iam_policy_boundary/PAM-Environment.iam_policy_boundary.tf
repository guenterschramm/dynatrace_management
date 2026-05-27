resource "dynatrace_iam_policy_boundary" "PAM-Environment" {
  name  = "PAM - Environment"
  query =<<-EOT
    environment:management-zone startsWith "PAM";
    storage:dt.security_context startsWith 'PAM';
    
    storage:bucket-name startsWith "default_";
    storage:bucket-name startsWith "system_";
    storage:bucket-name startsWith "pam_";
    storage:bucket-name startsWith "davis_pam_";
    EOT
}
