resource "dynatrace_hub_extension_config" "com_dynatrace_extension_cisco-cc" {
  name              = "com.dynatrace.extension.cisco-cc"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Catalyst Center v3",
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
        "site"
      ],
      "pythonRemote": {
        "configure_proxy": false,
        "debug_logs": false,
        "endpoint_configurations": [
          {
            "config_name": "Cisco DNA Center",
            "configure_expert_config": true,
            "connection": {
              "check_certificate": false,
              "client_timeout_seconds": 30,
              "credential_vault_id": "CREDENTIALS_VAULT-D1F732B52DFC7FD2",
              "url": "https://2217asdnav01/",
              "use_credential_vault": true
            },
            "devices_discovery_frequency_minutes": 15,
            "distinct_reporting_configs": {
              "configs_families": [
                {
                  "family_values": [
                    "SWITCHES_AND_HUBS"
                  ],
                  "frequency_minutes": 30,
                  "interfaces_filter": {
                    "admin_status_up_only": true
                  }
                },
                {
                  "family_values": [
                    "ROUTERS"
                  ],
                  "frequency_minutes": 30,
                  "interfaces_filter": {
                    "admin_status_up_only": true
                  }
                }
              ],
              "dimension": "FAMILY"
            },
            "expert_config": {
              "client_token_max_age_minutes": 50,
              "devices_page_size": 500,
              "dt_event_refire_interval_minutes": 55,
              "enable_legacy_cisco_cc_metrics": false,
              "enable_query_deduplication": true,
              "intent_api_devices_page_size": 500,
              "intent_api_interfaces_page_size": 500,
              "interfaces_device_ids_list_size": 250,
              "interfaces_page_size": 1000,
              "is_verbose_debug": false,
              "issue_cache_max_age_days": 7,
              "issue_cache_max_size": 5000,
              "max_calls_per_minute": 100,
              "notification_cache_max_size": 1000,
              "notifications_page_size": 1000,
              "report_no_mac_interfaces_as_generic": false,
              "sites_page_size": 50
            },
            "interfaces_discovery_frequency_minutes": 30,
            "metrics_collection_frequency_minutes": 15,
            "physical_topology_frequency_minutes": 15,
            "primaryFields": [],
            "primaryTags": [],
            "query_device_snmp_properties": true,
            "report_issues": false,
            "report_notifications": false,
            "report_physical_topology": true,
            "reporting_strategy": "DISTINCT",
            "sites_discovery_frequency_minutes": 15
          }
        ]
      },
      "version": "3.0.3"
    })
}
