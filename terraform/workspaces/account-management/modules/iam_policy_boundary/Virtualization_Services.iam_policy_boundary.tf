resource "dynatrace_iam_policy_boundary" "Virtualization_Services" {
  name  = "Virtualization Services"
  query =<<-EOT
    environment:management-zone startsWith "Virtualization Services";
    // storage:dt.security_context startsWith 'Virtualization Services';
    
    storage:bucket-name startsWith "default_";
    storage:bucket-name startsWith "system_";
  EOT
}
