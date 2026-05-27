resource "dynatrace_iam_policy_boundary" "HPM_VMES_Test" {
  name  = "HPM_VMES_Test"
  query =<<-EOT
    storage:dt.security_context startsWith "HPM_VMES_Test";
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("hpm_vmes*");
    storage:bucket-name MATCH ("davis_hpm_vmes*");
  EOT
}
