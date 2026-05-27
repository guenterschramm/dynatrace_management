resource "dynatrace_iam_policy_boundary" "Network" {
  name  = "Network"
  query =<<-EOT
    environment:management-zone MATCH ("network");
    storage:dt.security_context startsWith "network";
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("nedcon*");
    storage:bucket-name MATCH ("davis_nedcon*");
  EOT
}
