resource "dynatrace_custom_tags" "ECMLink" {
  entity_selector = "entityId(SERVICE-267B35BCBAF3FA28)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "ECMLink"
    }
  }
}
