resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-auto-discovery" {
  name              = "com.dynatrace.extension.snmp-auto-discovery"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Network Discovery Nedcon US",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2151",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "Nedcon_POC"
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
              "10.138.152.1-10.138.152.254"
            ],
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-AA52FC484EBDECD9",
              "useCredentialVault": true,
              "version": "SNMPv3"
            },
            "label": "Nedcon US 2161",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 30,
          "neighbors": true,
          "profile": "HIGH",
          "token": "***45e0ef044560f9e2***"
        }
      },
      "version": "4.1.7"
    })
}
