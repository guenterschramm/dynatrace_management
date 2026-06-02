resource "dynatrace_metric_metadata" "Host_Network_Interface_Speed" {
  description        = "Link Speed of Physical Network Interface Card"
  display_name       = "Host Network Interface Speed"
  metric_id          = "metric-vmware.host.nic.link_speed"
  source_entity_type = "vmware:host"
  unit               = "KiloByte"
  dimensions {
    dimension {
      display_name = "Network Interface"
      key          = "nic"
    }
  }
}
