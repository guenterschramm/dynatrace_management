resource "dynatrace_metric_metadata" "Power_Status_1" {
  description        = "The host power state. See the description in the enums for the PowerState data object type. 0=The host is powered on. A host that is entering standby mode entering is also in this state. 1=The host was specifically put in standby mode, either explicitly by the user, or automatically by DPM. 2=The host was specifically powered off by the user through VirtualCenter. 3=The host is disconnected, or notResponding, we can't have knowledge of its power state"
  display_name       = "Power Status"
  metric_id          = "metric-vmware.host.powered.status"
  source_entity_type = "vmware:host"
  unit               = "Count"
}
