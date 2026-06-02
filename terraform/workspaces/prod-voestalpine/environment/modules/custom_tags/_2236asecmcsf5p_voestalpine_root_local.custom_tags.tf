resource "dynatrace_custom_tags" "_2236asecmcsf5p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-3CA4B7A9D088C7AA)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
