resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_snmp-auto-discovery" {
  name  = "com.dynatrace.extension.snmp-auto-discovery"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "BG88",
      "dtAttributes": {
        "dt.cost.costcenter": "network",
        "dt.cost.product": "cisco",
        "dt.security_context": "network/bg88"
      },
      "enabled": true,
      "featureSets": [
        "self-monitoring"
      ],
      "pythonRemote": {
        "debugLogging": false,
        "groups": [
          {
            "addresses": [
              "10.163.32.0/24"
            ],
            "authentication": {
              "community": "***aa1a1a64ae4ee519***",
              "useCredentialVault": false,
              "version": "SNMPv2c"
            },
            "label": "BG88",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 60,
          "neighbors": true,
          "profile": "DEFAULT",
          "token": "***3a358438bd3b2291***"
        }
      },
      "version": "4.1.5"
    })
}
