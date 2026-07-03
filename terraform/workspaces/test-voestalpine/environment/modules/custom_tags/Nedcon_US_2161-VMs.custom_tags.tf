resource "dynatrace_custom_tags" "Nedcon_US_2161-VMs" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-554369B626C5E359)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      value   = "VM"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
  }
}
