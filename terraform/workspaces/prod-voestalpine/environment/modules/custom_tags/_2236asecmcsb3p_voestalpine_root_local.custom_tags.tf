resource "dynatrace_custom_tags" "_2236asecmcsb3p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-E35D35EA4ACC0205)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
