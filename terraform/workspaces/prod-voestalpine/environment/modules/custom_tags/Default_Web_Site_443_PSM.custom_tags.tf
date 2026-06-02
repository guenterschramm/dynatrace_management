resource "dynatrace_custom_tags" "Default_Web_Site_443_PSM" {
  entity_selector = "entityId(SERVICE-D18654DA4791C882)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "PAM"
    }
  }
}
