resource "dynatrace_iam_policy_boundary" "PCD_PW_Portal-Environment" {
  name  = "PCD_PW Portal - Environment"
  query =<<-EOT
    environment:management-zone startsWith "PCD_PW_Portal";
    storage:dt.security_context IN ('PCD_PW_Portal');
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("pcd_pw_portal_*");
    storage:bucket-name MATCH ("davis_pcd_pw_portal*");
  EOT
}
