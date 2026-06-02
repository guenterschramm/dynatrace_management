resource "dynatrace_custom_tags" "_suche-webservice" {
  entity_selector = "entityId(SERVICE-E43A26B709AB7E91)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "Backend"
    }
  }
}
