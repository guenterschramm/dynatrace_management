resource "dynatrace_custom_tags" "_2236asecmcsb5p_voestalpine_root_local" {
  entity_selector = "entityId(HOST-05975D427629204E)"
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
