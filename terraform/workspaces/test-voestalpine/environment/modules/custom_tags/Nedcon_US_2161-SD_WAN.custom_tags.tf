resource "dynatrace_custom_tags" "Nedcon_US_2161-SD_WAN" {
  entity_selector = "entityId(MULTIPROTOCOL_MONITOR-E6BB46F6C0B53452)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "DeviceGroup"
      value   = "SD_Wan"
    }
  }
}
