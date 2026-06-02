resource "dynatrace_custom_tags" "_2217DBSQLCLN03_voestalpine_root_local" {
  entity_selector = "entityId(HOST-EFD88A91BFA12D4E)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Cluster"
      value   = "SQL2019"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Application"
      value   = "SQL Server"
    }
  }
}
