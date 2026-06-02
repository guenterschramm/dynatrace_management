resource "dynatrace_custom_tags" "_2236asecmcsb2p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-B6160E5D2C2AC281)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
