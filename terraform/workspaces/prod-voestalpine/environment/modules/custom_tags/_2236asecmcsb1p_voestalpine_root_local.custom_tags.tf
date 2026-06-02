resource "dynatrace_custom_tags" "_2236asecmcsb1p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-48D8D0E1FD5ADEE0)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Webserver"
      value   = "IIS"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "Backend"
    }
  }
}
