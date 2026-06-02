resource "dynatrace_json_dashboard" "xECM_P-Frontend_response_times_by_client_IP-cloned-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dynamicFilters": {
          "filters": [
            "APPLICATION_TAG_KEY:xECM_P"
          ]
        },
        "name": "xECM P - Frontend response times by client IP-cloned-cloned",
        "owner": "Dietmar.Wallner@voestalpine.com"
      },
      "tiles": [
        {
          "bounds": {
            "height": 456,
            "left": 1102,
            "top": 0,
            "width": 342
          },
          "configured": true,
          "customName": "Action duration by client IP",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT TOP(ip,10) AS \"Client IP\", AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nGROUP BY ip \nORDER BY AVG(useraction.duration) DESC ",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 456,
            "left": 0,
            "top": 0,
            "width": 1064
          },
          "configured": true,
          "customName": "Action duration by client IP",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT TOP(ip,10) AS \"Client IP\", AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nGROUP BY ip \nORDER BY AVG(useraction.duration) DESC ",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "COLUMN_CHART"
        },
        {
          "bounds": {
            "height": 190,
            "left": 836,
            "top": 494,
            "width": 380
          },
          "configured": true,
          "customName": "CMAS (10.245.0.0 - 10.245.255.255 )",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND ip BETWEEN \"10.245.0.0\" AND \"10.245.255.255\"",
          "tileFilter": {
            "timeframe": "-24h to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 494,
            "width": 380
          },
          "configured": true,
          "customName": "BG 75",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG75*\"",
          "tileFilter": {
            "timeframe": "-24h to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 418,
            "top": 494,
            "width": 380
          },
          "configured": true,
          "customName": "BG 88",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.duration) AS \"Avg Duration (ms)\", COUNT(useraction.targetUrl) AS \"Action Count\"\nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG88*\" \n",
          "tileFilter": {
            "timeframe": "-24h to now"
          },
          "tileType": "DTAQL",
          "type": "TABLE"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_P-Frontend_response_times_by_client_IP-cloned-cloned_owned_by_Dietmar_Wallner_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_P-Frontend_response_times_by_client_IP-cloned-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_P-Frontend_response_times_by_client_IP-cloned-cloned_owned_by_Dietmar_Wallner_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_P-Frontend_response_times_by_client_IP-cloned-cloned_owned_by_Dietmar_Wallner_voestalpine_com" {
  # contents = ""
}
