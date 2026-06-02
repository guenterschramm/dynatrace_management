resource "dynatrace_metric_metadata" "Connection_Status" {
  description        = "0=Connected to the server. For ESX Server, this is always the setting. 1=The user has explicitly taken the host down. 2=Virtual Center is not receiving heartbeats from the server."
  display_name       = "Connection Status"
  metric_id          = "metric-vmware.host.connected.status"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
