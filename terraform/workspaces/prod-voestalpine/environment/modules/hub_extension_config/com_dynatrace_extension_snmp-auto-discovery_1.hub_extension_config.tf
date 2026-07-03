resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-auto-discovery_1" {
  name              = "com.dynatrace.extension.snmp-auto-discovery"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Network - Discovery",
      "dtAttributes": {
        "dt.cost.costcenter": "discovery",
        "dt.cost.product": "network",
        "dt.security_context": "network"
      },
      "enabled": true,
      "featureSets": [],
      "pythonRemote": {
        "debugLogging": false,
        "groups": [
          {
            "addresses": [
              "10.233.0.1-10.233.0.255"
            ],
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-BEB60FA211474B83",
              "useCredentialVault": true,
              "version": "SNMPv3"
            },
            "label": "Network - WLAN Core router discovery",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 30,
          "neighbors": true,
          "profile": "HIGH",
          "token": "***55d680d1a9a68de2***"
        }
      },
      "version": "4.1.7"
    })
}
