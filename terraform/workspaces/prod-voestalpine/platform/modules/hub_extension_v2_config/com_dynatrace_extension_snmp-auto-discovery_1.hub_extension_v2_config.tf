resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_snmp-auto-discovery_1" {
  name  = "com.dynatrace.extension.snmp-auto-discovery"
  scope = "ag_group-default"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "ActiveGates",
      "enabled": false,
      "featureSets": [
        "self-monitoring"
      ],
      "pythonRemote": {
        "groups": [
          {
            "addresses": [
              "10.164.16.0/24",
              "10.164.15.0/24",
              "10.164.17.0/24",
              "10.164.18.0/24"
            ],
            "authentication": {
              "community": "***c565d25c0c7b776d***",
              "useCredentialVault": false,
              "version": "SNMPv2c"
            },
            "label": "ActiveGates",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 60,
          "neighbors": true,
          "profile": "HIGH",
          "token": "***defad37d714bd88d***"
        }
      },
      "version": "4.1.5"
    })
}
