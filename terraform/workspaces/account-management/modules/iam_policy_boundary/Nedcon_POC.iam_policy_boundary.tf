resource "dynatrace_iam_policy_boundary" "Nedcon_POC" {
  name  = "Nedcon_POC"
  query =<<-EOT
    environment:management-zone MATCH ("Nedcon_POC");
    storage:dt.security_context MATCH ("Nedcon_POC");
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("nedcon*");
    storage:bucket-name MATCH ("davis_nedcon*");
  EOT
}
