resource "dynatrace_json_dashboard" "FNT_Command_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "FNT Command",
        "owner": "guenter.schramm@voestalpine.com"
      }
    })
  link_id  = "${dynatrace_json_dashboard_base.FNT_Command_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "FNT_Command_owned_by_guenter_schramm_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.FNT_Command_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "FNT_Command_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
