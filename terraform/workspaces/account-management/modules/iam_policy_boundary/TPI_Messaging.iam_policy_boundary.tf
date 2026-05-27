resource "dynatrace_iam_policy_boundary" "TPI_Messaging" {
  name  = "TPI Messaging"
  query =<<-EOT
    //environment:management-zone MATCH ("TPI_Messaging");
    storage:dt.security_context startsWith "TPI_Messaging";
    
    storage:bucket-name MATCH ("default_*");
    storage:bucket-name MATCH ("dt_system_*");
    storage:bucket-name MATCH ("tpi_messaging*");
    storage:bucket-name MATCH ("davis_tpi_messaging*");
  EOT
}
