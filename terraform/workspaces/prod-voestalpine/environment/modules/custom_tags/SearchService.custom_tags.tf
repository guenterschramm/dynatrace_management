resource "dynatrace_custom_tags" "SearchService" {
  entity_selector = "entityId(SERVICE-FB24FFB1829BDDBA)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "Backend"
    }
  }
}
