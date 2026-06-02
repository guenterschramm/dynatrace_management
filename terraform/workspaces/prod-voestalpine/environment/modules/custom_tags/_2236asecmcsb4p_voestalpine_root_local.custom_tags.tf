resource "dynatrace_custom_tags" "_2236asecmcsb4p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-F6F1B7F770E87E4A)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "Backend"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
  }
}
