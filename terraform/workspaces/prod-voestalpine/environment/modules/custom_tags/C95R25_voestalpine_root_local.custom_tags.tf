resource "dynatrace_custom_tags" "C95R25_voestalpine_root_local" {
  entity_selector = "entityId(CUSTOM_DEVICE-08D61FA622FDF7DD)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Network_Level_03_Name"
      value   = "0010_Linz"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_Level_04_Name"
      value   = "BG35"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_Level_02_Name"
      value   = "Austria"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_Level_01_Name"
      value   = "Global"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_site_name"
      value   = "-1"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_site_name_hierarchy"
      value   = "Global/Austria/0010_Linz/BG35/-1"
    }
  }
}
