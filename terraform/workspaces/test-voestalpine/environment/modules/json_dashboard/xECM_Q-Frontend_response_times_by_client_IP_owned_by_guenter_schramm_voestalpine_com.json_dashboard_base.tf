resource "dynatrace_json_dashboard" "xECM_Q-Frontend_response_times_by_client_IP_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "xECM Q - Frontend response times by client IP",
        "owner": "guenter.schramm@voestalpine.com",
        "preset": true,
        "shared": true,
        "tags": [
          "xECM_Q"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 190,
            "left": 418,
            "top": 494,
            "width": 380
          },
          "configured": true,
          "customName": "IP range 10.164.0.0 - 10.164.255.255",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"q-ecm-steel.voestalpine.net\" \nAND ip BETWEEN \"10.164.0.0\" AND \"10.164.255.255\"",
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
            "top": 494,
            "width": 380
          },
          "configured": true,
          "customName": "IP range 10.61.0.0 - 10.61.255.255",
          "limit": 50,
          "name": "User Sessions Query",
          "query": "SELECT AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"q-ecm-steel.voestalpine.net\" \nAND ip BETWEEN \"10.61.0.0\" AND \"10.61.255.255\"",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        },
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
          "query": "SELECT TOP(ip,10) AS \"Client IP\", AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"q-ecm-steel.voestalpine.net\" \nGROUP BY ip \nORDER BY AVG(useraction.duration) DESC ",
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
          "query": "SELECT TOP(ip,10) AS \"Client IP\", AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"q-ecm-steel.voestalpine.net\" \nGROUP BY ip \nORDER BY AVG(useraction.duration) DESC ",
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
          "query": "SELECT AVG(useraction.duration) AS \"Avg Duration (ms)\" \nFROM usersession \nWHERE useraction.application = \"q-ecm-steel.voestalpine.net\" \nAND ip BETWEEN \"10.245.0.0\" AND \"10.245.255.255\"",
          "tileFilter": {
            "timeframe": "-30d to now"
          },
          "tileType": "DTAQL",
          "type": "SINGLE_VALUE"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.xECM_Q-Frontend_response_times_by_client_IP_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "xECM_Q-Frontend_response_times_by_client_IP_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.xECM_Q-Frontend_response_times_by_client_IP_owned_by_guenter_schramm_voestalpine_com.id}"
  preset       = true
}


resource "dynatrace_json_dashboard_base" "xECM_Q-Frontend_response_times_by_client_IP_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
