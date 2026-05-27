resource "dynatrace_iam_policy_boundary" "Bee4IT-Environment" {
  name  = "Bee4IT - Environment"
  query =<<-EOT
    environment:management-zone startsWith "Bee4IT";
    storage:dt.security_context IN ('Bee4IT');
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("bee4it_*");
    storage:bucket-name MATCH ("davis_bee4it_*");
    EOT
}
