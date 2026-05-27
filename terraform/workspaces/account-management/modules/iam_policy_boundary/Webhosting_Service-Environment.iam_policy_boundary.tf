resource "dynatrace_iam_policy_boundary" "Webhosting_Service-Environment" {
  name  = "Webhosting Service - Environment"
  query =<<-EOT
    environment:management-zone startsWith "Webhosting";
    storage:dt.security_context IN ("Webhosting Service", "Webhosting_Service");
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("webhosting*");
    storage:bucket-name MATCH ("davis_webhosting*");
  EOT
}
