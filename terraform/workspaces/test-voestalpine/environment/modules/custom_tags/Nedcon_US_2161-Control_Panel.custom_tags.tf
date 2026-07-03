resource "dynatrace_custom_tags" "Nedcon_US_2161-Control_Panel" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-8962E3EDB9BD5042)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      value   = "Control_Panel"
    }
  }
}
