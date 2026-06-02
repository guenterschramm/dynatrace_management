resource "dynatrace_json_dashboard" "CC_Level_2_owned_by_Thomas_Aufischer_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "CC Level 2",
        "owner": "Thomas.Aufischer@voestalpine.com"
      },
      "tiles": [
        {
          "bounds": {
            "height": 152,
            "left": 0,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "name": "Problems",
          "tileType": "OPEN_PROBLEMS"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.CC_Level_2_owned_by_Thomas_Aufischer_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "CC_Level_2_owned_by_Thomas_Aufischer_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.CC_Level_2_owned_by_Thomas_Aufischer_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "CC_Level_2_owned_by_Thomas_Aufischer_voestalpine_com" {
  # contents = ""
}
