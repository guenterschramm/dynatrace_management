resource "dynatrace_iam_policy_boundary" "xECM_Corporate-Environment" {
  name  = "xECM Corporate - Environment"
  query =<<-EOT
    environment:management-zone startsWith "xECM Corporate";
    storage:dt.security_context IN ("xECM Corporate", "xECM_Corp");
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("system_*");
    storage:bucket-name MATCH ("xecm_corp_*");
    storage:bucket-name MATCH ("davis_xecm_corp_events*");
  EOT
}
