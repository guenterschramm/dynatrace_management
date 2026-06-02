resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_cisco-cc" {
  name  = "com.dynatrace.extension.cisco-cc"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "Catalyst Center",
      "dtAttributes": {
        "dt.cost.costcenter": "network",
        "dt.cost.product": "catalystCenter",
        "dt.security_context": "network"
      },
      "enabled": false,
      "featureSets": [
        "center",
        "device",
        "interface",
        "self-monitoring",
        "site"
      ],
      "pythonRemote": {
        "configure_proxy": false,
        "debug_logs": false,
        "endpoint_configurations": [
          {
            "check_certificate": false,
            "config_name": "Cisco DNA Center",
            "configure_expert_config": false,
            "device_family": [
              "SWITCHES_AND_HUBS",
              "ROUTERS",
              "WIRELESS_CONTROLLER",
              "UNIFIED_AP",
              "SECURITY_AND_VPN"
            ],
            "device_type_filters": [],
            "fetch_and_report_cc_events": false,
            "ingest_admin_up_interfaces": true,
            "ingest_issues": true,
            "issue_as_dt_event": false,
            "issue_filter": [],
            "metrics_collection_frequency": 15,
            "password": "***a7038f4d2b486ec1***",
            "report_device_by_tags": false,
            "timeout": 30,
            "url": "https://2217asdnav01/",
            "useCredentialVault": false,
            "username": "API_RO",
            "version": "2.3.5.3"
          }
        ]
      },
      "version": "2.2.1"
    })
}
