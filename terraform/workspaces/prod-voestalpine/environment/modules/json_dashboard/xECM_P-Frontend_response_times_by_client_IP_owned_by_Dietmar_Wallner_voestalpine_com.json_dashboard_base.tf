resource "dynatrace_json_dashboard" "xECM_P-Frontend_response_times_by_client_IP_owned_by_Dietmar_Wallner_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dynamicFilters": {
          "filters": [
            "APPLICATION_TAG_KEY:xECM_P"
          ]
        },
        "name": "xECM P - Frontend response times by client IP",
        "owner": "Dietmar.Wallner@voestalpine.com",
        "preset": true,
        "shared": true
      },
      "tiles": [
        {
          "bounds": {
            "height": 456,
            "left": 0,
            "top": 1292,
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
            "height": 646,
            "left": 1140,
            "top": 0,
            "width": 342
          },
          "configured": true,
          "customName": "Action duration by client IP",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT TOP(ip,50) AS \"Client IP\", AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nGROUP BY ip \nORDER BY AVG(useraction.duration) DESC ",
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DTAQL",
          "type": "TABLE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 38,
            "width": 380
          },
          "configured": true,
          "customName": "BG 75 (30d)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG75*\"",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 228,
            "width": 380
          },
          "configured": true,
          "customName": "BG 75 (24h)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG75*\" ",
          "tileFilter": {
            "timeframe": "-24h to now"
          },
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 760,
            "top": 38,
            "width": 380
          },
          "configured": true,
          "customName": "LogServ (30d)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"LogServ*\"",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 760,
            "top": 228,
            "width": 380
          },
          "configured": true,
          "customName": "LogServ (24h)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"LogServ*\"",
          "tileFilter": {
            "timeframe": "-24h to now"
          },
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 608,
            "width": 380
          },
          "configured": true,
          "customName": "BG 20 (24h)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG20*\"",
          "tileFilter": {
            "timeframe": "-24h to now"
          },
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 798,
            "width": 380
          },
          "configured": true,
          "customName": "CMAS, 10.245.0.0/16 (30d)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND ip BETWEEN \"10.245.0.0\" AND \"10.245.255.255\"",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 418,
            "width": 380
          },
          "configured": true,
          "customName": "BG 20 (30d)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG20*\"",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 380,
            "top": 228,
            "width": 380
          },
          "configured": true,
          "customName": "BG 88 (24h)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG88*\"",
          "tileFilter": {
            "timeframe": "-24h to now"
          },
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 380,
            "top": 418,
            "width": 380
          },
          "configured": true,
          "customName": "BG 88  (6h)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG88*\"",
          "tileFilter": {
            "timeframe": "-6h"
          },
          "tileType": "DTAQL",
          "timeFrameShift": "dynamic",
          "type": "SINGLE_VALUE"
        },
        {
          "bounds": {
            "height": 190,
            "left": 380,
            "top": 38,
            "width": 380
          },
          "configured": true,
          "customName": "BG 88 (30d)",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.domContentLoadedTime) AS \"Avg Duration DOM Loaded (s)\", COUNT(useraction.targetUrl) AS \"Action Count\" \nFROM usersession \nWHERE useraction.application = \"ecm-steel.voestalpine.net\" \nAND city LIKE \"BG88*\"",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "TABLE"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_P-Frontend_response_times_by_client_IP_owned_by_Dietmar_Wallner_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_P-Frontend_response_times_by_client_IP_owned_by_Dietmar_Wallner_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_P-Frontend_response_times_by_client_IP_owned_by_Dietmar_Wallner_voestalpine_com.id}"
  preset       = true
  permissions {
    permission {
      type  = "ALL"
      level = "VIEW"
    }
  }
}


resource "dynatrace_json_dashboard_base" "xECM_P-Frontend_response_times_by_client_IP_owned_by_Dietmar_Wallner_voestalpine_com" {
  # contents = ""
}
