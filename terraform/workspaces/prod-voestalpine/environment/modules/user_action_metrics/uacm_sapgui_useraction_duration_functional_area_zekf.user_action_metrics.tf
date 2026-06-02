resource "dynatrace_user_action_metrics" "uacm_sapgui_useraction_duration_functional_area_zekf" {
  enabled    = true
  metric_key = "uacm.sapgui_useraction_duration_functional_area_zekf"
  filters {
    filter {
      field_name = "useraction.stringProperties.gui_screen"
      operator   = "IS_NOT_NULL"
    }
    filter {
      field_name = "useraction.name"
      operator   = "STARTS_WITH"
      value      = "ZEKF"
    }
  }
  value {
    type       = "FIELD"
    field_name = "duration"
  }
}
