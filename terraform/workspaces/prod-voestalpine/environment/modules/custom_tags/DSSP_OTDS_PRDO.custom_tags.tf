resource "dynatrace_custom_tags" "DSSP_OTDS_PRDO" {
  entity_selector = "entityId(SERVICE-7CCB6ABCEB251B90)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "xECM Steel Component"
      value   = "OTDS"
    }
  }
}
