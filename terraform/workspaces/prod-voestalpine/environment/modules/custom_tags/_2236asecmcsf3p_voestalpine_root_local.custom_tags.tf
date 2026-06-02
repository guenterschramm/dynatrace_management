resource "dynatrace_custom_tags" "_2236asecmcsf3p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-C78D0C795A45AFBC)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
