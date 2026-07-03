resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-auto-discovery_1" {
  name              = "com.dynatrace.extension.snmp-auto-discovery"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Network Discovery Nedcon US - eWons",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2151"
      },
      "enabled": true,
      "featureSets": [],
      "pythonRemote": {
        "debugLogging": false,
        "groups": [
          {
            "addresses": [
              "10.138.154.1-10.138.154.254"
            ],
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-AA52FC484EBDECD9",
              "useCredentialVault": true,
              "version": "SNMPv3"
            },
            "label": "Nedcom US 2161 - eWons",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 30,
          "neighbors": true,
          "profile": "DEFAULT",
          "token": "***e8dda1def94a39e9***"
        }
      },
      "version": "4.1.7"
    })
}
