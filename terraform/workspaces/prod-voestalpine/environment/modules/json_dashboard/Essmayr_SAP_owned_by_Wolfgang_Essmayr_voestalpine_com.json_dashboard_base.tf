resource "dynatrace_json_dashboard" "Essmayr_SAP_owned_by_Wolfgang_Essmayr_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "Essmayr SAP",
        "owner": "Wolfgang.Essmayr@voestalpine.com",
        "tags": [
          "SAP"
        ]
      }
    })
  link_id  = "${dynatrace_json_dashboard_base.Essmayr_SAP_owned_by_Wolfgang_Essmayr_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "Essmayr_SAP_owned_by_Wolfgang_Essmayr_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.Essmayr_SAP_owned_by_Wolfgang_Essmayr_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "Essmayr_SAP_owned_by_Wolfgang_Essmayr_voestalpine_com" {
  # contents = ""
}
