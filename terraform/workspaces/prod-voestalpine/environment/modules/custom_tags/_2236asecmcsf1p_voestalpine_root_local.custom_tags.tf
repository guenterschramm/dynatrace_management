resource "dynatrace_custom_tags" "_2236asecmcsf1p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-3F364FD91594BE69)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
