resource "dynatrace_user_action_metrics" "uacm_sapgui_useraction_duration_functional_area_logisticsexecution" {
  enabled    = true
  metric_key = "uacm.sapgui_useraction_duration_functional_area_logisticsexecution"
  filters {
    filter {
      field_name = "useraction.stringProperties.gui_screen"
      operator   = "IS_NOT_NULL"
    }
    filter {
      field_name = "useraction.name"
      operator   = "STARTS_WITH"
      value      = "Logistics Execution"
    }
  }
  value {
    type       = "FIELD"
    field_name = "duration"
  }
}
