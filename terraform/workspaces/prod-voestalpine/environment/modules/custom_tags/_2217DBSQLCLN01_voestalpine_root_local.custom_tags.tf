resource "dynatrace_custom_tags" "_2217DBSQLCLN01_voestalpine_root_local" {
  entity_selector = "entityId(HOST-46C5336F4E641280)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "SQL Server"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Cluster"
      value   = "SQL2019"
    }
  }
}
