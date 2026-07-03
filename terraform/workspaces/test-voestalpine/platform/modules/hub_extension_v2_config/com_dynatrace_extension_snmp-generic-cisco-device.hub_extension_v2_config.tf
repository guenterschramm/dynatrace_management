resource "dynatrace_hub_extension_v2_config" "com_dynatrace_extension_snmp-generic-cisco-device" {
  name  = "com.dynatrace.extension.snmp-generic-cisco-device"
  scope = "ag_group-nedcon_us_2161"
  value = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon US 2161 Cisco ",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2157",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "Nedcon_POC"
      },
      "enabled": true,
      "featureSets": [
        "Advanced interfaces",
        "Control Plane",
        "Interfaces",
        "Interfaces 64-bit",
        "neighbor-discovery",
        "OSPF",
        "Traffic"
      ],
      "snmp": {
        "devices": [
          {
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-AA52FC484EBDECD9",
              "type": "SNMPv3",
              "useCredentialVault": true
            },
            "ip": "10.138.152.253",
            "port": 161
          },
          {
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-AA52FC484EBDECD9",
              "type": "SNMPv3",
              "useCredentialVault": true
            },
            "ip": "10.138.152.254",
            "port": 161
          }
        ]
      },
      "vars": {},
      "version": "4.0.9"
    })
}
