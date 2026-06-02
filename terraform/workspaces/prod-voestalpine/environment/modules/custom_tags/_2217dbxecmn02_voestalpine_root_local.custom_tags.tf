resource "dynatrace_custom_tags" "_2217dbxecmn02_voestalpine_root_local" {
  entity_selector = "entityId(HOST-E606C497EB1200CA)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "[Environment]dt.cost.costcenter"
      value   = "xecm"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "SQL Server"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "[Environment]dt.cost.product"
      value   = "xecm_production"
    }
  }
}
