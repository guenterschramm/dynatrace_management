resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_snmp-auto-discovery_2" {
  name  = "com.dynatrace.extension.snmp-auto-discovery"
  scope = "ag_group-nedcon_us_2161"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "Network Discovery Nedcon US - SDWAN",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2151",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "Nedcon_POC"
      },
      "enabled": true,
      "featureSets": [],
      "pythonRemote": {
        "debugLogging": false,
        "groups": [
          {
            "addresses": [
              "10.201.4.27-10.201.4.28"
            ],
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-AA52FC484EBDECD9",
              "useCredentialVault": true,
              "version": "SNMPv3"
            },
            "label": "Nedcom US 2161 - SDWAN",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 30,
          "neighbors": true,
          "profile": "HIGH",
          "token": "***94948f1e7263f23d***"
        }
      },
      "version": "4.1.7"
    })
}
