resource "dynatrace_iam_policy_boundary" "xECM_Steel-Environment" {
  name  = "xECM Steel - Environment"
  query =<<-EOT
    environment:management-zone startsWith "xECM Steel";
    environment:management-zone startsWith "xECM_P";
    storage:dt.security_context IN ("xECM Steel","xECM_P","xECM_Steel");
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("system_*");
    storage:bucket-name MATCH ("xecm_steel_*");
    storage:bucket-name MATCH ("davis_xecm_steel_events*");
    
    //delete mid April 2026
    storage:bucket-name MATCH ("xecm_logs*");
    
    //delete August 2027
    storage:bucket-name MATCH ("davis_xecm_events*");
  EOT
}
