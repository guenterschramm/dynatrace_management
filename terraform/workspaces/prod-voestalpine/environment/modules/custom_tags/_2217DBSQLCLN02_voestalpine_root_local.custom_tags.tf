resource "dynatrace_custom_tags" "_2217DBSQLCLN02_voestalpine_root_local" {
  entity_selector = "entityId(HOST-C16793303764302D)"
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
