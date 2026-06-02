resource "dynatrace_grail_security_context" "cloud_azure_netapp_netappaccounts_capacitypools_volumes_managementZones" {
  destination_property = "managementZones"
  entity_type          = "cloud:azure:netapp:netappaccounts:capacitypools:volumes"
  insert_after         = ""
}
