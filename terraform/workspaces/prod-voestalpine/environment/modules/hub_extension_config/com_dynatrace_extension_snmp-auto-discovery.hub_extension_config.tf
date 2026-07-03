resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-auto-discovery" {
  name              = "com.dynatrace.extension.snmp-auto-discovery"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "BG88 Autodiscovery",
      "dtAttributes": {
        "dt.cost.costcenter": "network",
        "dt.cost.product": "cisco",
        "dt.security_context": "network"
      },
      "enabled": false,
      "featureSets": [
        "self-monitoring"
      ],
      "pythonRemote": {
        "debugLogging": true,
        "groups": [
          {
            "addresses": [
              "10.163.32.0-10.163.32.255"
            ],
            "authentication": {
              "community": "***e4f634fa10312951***",
              "useCredentialVault": false,
              "version": "SNMPv2c"
            },
            "label": "BG88 Scan",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 5,
          "neighbors": true,
          "profile": "DEFAULT",
          "token": "***5ec9c93db9ce195f***"
        }
      },
      "version": "4.1.7"
    })
}
