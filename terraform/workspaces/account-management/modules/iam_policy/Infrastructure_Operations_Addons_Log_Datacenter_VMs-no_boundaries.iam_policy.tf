resource "dynatrace_iam_policy" "Infrastructure_Operations_Addons_Log_Datacenter_VMs-no_boundaries" {
  name            = "Infrastructure & Operations Addons (Log, Datacenter, VMs) - no boundaries!"
  description     = "Grants visiliblity to Logs, Events and Virtualization in the I&O app"
  account         = "c65530cc-1621-455c-989d-22e43b2c00f5"
  # environment   = ""
  statement_query =<<-EOT
    ALLOW storage:metrics:read WHERE storage:metric.key='dt.log.status_per_entity_count';
    
    ALLOW storage:metrics:read WHERE storage:metric.key startsWith "dt.cloud.vmware";
    
    ALLOW storage:entities:read WHERE storage:entity.type  startsWith "dt.entity.aws_availability_zone";
    
    ALLOW storage:entities:read WHERE storage:entity.type startsWith "dt.entity.azure_region";
    
    ALLOW storage:entities:read WHERE storage:entity.type startsWith "dt.entity.geoloc_site";
    
    ALLOW storage:entities:read WHERE storage:entity.type startsWith "dt.entity.gcp_zone";
    
    ALLOW storage:entities:read WHERE storage:entity.type startsWith "dt.entity.vmware_datacenter";
  EOT
}
