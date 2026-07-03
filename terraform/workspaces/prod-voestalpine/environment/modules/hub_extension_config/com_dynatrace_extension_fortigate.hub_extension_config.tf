resource "dynatrace_hub_extension_config" "com_dynatrace_extension_fortigate" {
  name              = "com.dynatrace.extension.fortigate"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Fortinet POC",
      "dtAttributes": {
        "dt.cost.costcenter": "network",
        "dt.cost.product": "fortigate",
        "dt.security_context": "network"
      },
      "enabled": false,
      "featureSets": [
        "Interfaces",
        "IPSec Tunnels",
        "Overview",
        "Ping"
      ],
      "pythonRemote": {
        "endpoints": [
          {
            "alias": "AT_0010_lab_fw_2217_BigRZ",
            "host": "10.163.89.201",
            "interface_filters": [],
            "pass_access_token_as_header": false,
            "password": "***356a3a7f7a57c75f***",
            "port": 443,
            "primaryFields": [],
            "primaryTags": [
              {
                "key": "primary_tags.dt.security_context",
                "value": "network"
              }
            ],
            "raise_on_login_failure": false,
            "raise_on_ping_failure": false,
            "raise_on_system_status_failure": false,
            "tunnel_filters": [],
            "tunnel_proxy_filters": [],
            "useCredentialVault": false,
            "use_https": true,
            "username": "dynatrace_monitoring",
            "vdom_filters": [],
            "verbose": true,
            "verify_https": false
          }
        ]
      },
      "version": "2.0.2"
    })
}
