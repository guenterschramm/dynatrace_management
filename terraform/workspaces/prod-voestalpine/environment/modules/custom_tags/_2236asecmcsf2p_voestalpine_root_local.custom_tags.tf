resource "dynatrace_custom_tags" "_2236asecmcsf2p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-DF1BC83C6F109665)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
