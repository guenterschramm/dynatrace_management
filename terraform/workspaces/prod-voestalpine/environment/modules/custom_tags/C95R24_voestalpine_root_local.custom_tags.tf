resource "dynatrace_custom_tags" "C95R24_voestalpine_root_local" {
  entity_selector = "entityId(CUSTOM_DEVICE-02EFA1FAFB9500B5)"
  tags {
    filter {
      context = "CONTEXTLESS"
      key     = "Network_site_name_hierarchy"
      value   = "Global/Austria/0010_Linz/BG41/1 Stock RR"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_Level_04_Name"
      value   = "BG41"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_site_name"
      value   = "1 Stock RR"
    }
    filter {
      context = "CONTEXTLESS"
      key     = "Network_Level_03_Name"
      value   = "0010_Linz"
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
  }
}
