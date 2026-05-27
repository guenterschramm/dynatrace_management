resource "dynatrace_iam_policy_boundary" "Database_Services" {
  name  = "Database Services"
  query =<<-EOT
    environment:management-zone startsWith "Database";
    storage:dt.security_context IN ("Database Services", "Database_Services");
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("database_*");
  EOT
}
