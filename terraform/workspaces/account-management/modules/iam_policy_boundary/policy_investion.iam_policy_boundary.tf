resource "dynatrace_iam_policy_boundary" "policy_investion" {
  name  = "policy_investion"
  query =<<-EOT
    //environment:management-zone startsWith "PAM";
    //storage:dt.security_context startsWith "PAM - Privileged Access Management";
    
    //storage:frontend.name startsWith "PAM*";
    //storage:bucket-name startsWith "default_";
    //storage:bucket-name startsWith "system_";
    //storage:bucket-name startsWith "pam_";
    //storage:bucket-name startsWith "davis_pam_";
    
    environment:management-zone startsWith "xECM Steel";
    environment:management-zone startsWith "xECM_P";
    storage:dt.security_context startsWith "xECM Steel";
    storage:dt.security_context startsWith "xECM_P";
    storage:dt.security_context startsWith "xECM_Steel";
    
    storage:bucket-name startsWith "default_";
    storage:bucket-name startsWith "system_";
    storage:bucket-name startsWith "xecm_logs";
    storage:bucket-name startsWith "davis_xecm_events";
  EOT
}
