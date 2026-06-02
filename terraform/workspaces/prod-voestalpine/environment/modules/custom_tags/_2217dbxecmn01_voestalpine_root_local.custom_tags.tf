resource "dynatrace_custom_tags" "_2217dbxecmn01_voestalpine_root_local" {
  entity_selector = "entityId(HOST-5B144D92C902184E)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "[Environment]dt.cost.product"
      value   = "xecm_production"
    }
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
  }
}
