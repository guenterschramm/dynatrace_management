resource "dynatrace_custom_tags" "ContentService" {
  entity_selector = "entityId(SERVICE-278F0B0F7656DEF3)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "ContentService"
    }
  }
}
