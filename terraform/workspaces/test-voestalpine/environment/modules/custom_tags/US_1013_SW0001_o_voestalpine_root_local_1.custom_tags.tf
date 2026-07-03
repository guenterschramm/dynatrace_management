resource "dynatrace_custom_tags" "US_1013_SW0001_o_voestalpine_root_local_1" {
  entity_selector = "entityId(CUSTOM_DEVICE-719CDE50BBB63E23)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
  }
}
