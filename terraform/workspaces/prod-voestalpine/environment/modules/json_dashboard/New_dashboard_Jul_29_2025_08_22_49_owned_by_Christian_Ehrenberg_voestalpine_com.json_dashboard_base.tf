resource "dynatrace_json_dashboard" "New_dashboard_Jul_29_2025_08_22_49_owned_by_Christian_Ehrenberg_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "New dashboard (Jul 29, 2025 08:22:49)",
        "owner": "Christian.Ehrenberg@voestalpine.com"
      }
    })
  link_id  = "${dynatrace_json_dashboard_base.New_dashboard_Jul_29_2025_08_22_49_owned_by_Christian_Ehrenberg_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "New_dashboard_Jul_29_2025_08_22_49_owned_by_Christian_Ehrenberg_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.New_dashboard_Jul_29_2025_08_22_49_owned_by_Christian_Ehrenberg_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "New_dashboard_Jul_29_2025_08_22_49_owned_by_Christian_Ehrenberg_voestalpine_com" {
  # contents = ""
}
