resource "dynatrace_custom_tags" "US_1013_SW0001_o_voestalpine_root_local" {
  entity_selector = "entityId(CUSTOM_DEVICE-5CDB35B08575D31F)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "UCID"
      value   = "nedcon_us_2161"
    }
  }
}
