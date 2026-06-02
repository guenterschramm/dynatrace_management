resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-generic-device_1" {
  name              = "com.dynatrace.extension.snmp-generic-device"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon US 2161 Generic v3",
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
        "Interfaces 32-bit",
        "Interfaces 64-bit",
        "SNMP Health",
        "Traffic"
      ],
      "snmp": {
        "devices": [
          {
            "authentication": {
              "authPassword": "***2e08aac4c9fec735***",
              "authProtocol": "SHA",
              "privPassword": "***6ce6bc5f8121e305***",
              "privProtocol": "DES",
              "securityLevel": "AUTH_PRIV",
              "type": "SNMPv3",
              "useCredentialVault": false,
              "userName": "NETZWERK"
            },
            "ip": "10.138.152.253",
            "port": 161
          },
          {
            "authentication": {
              "authPassword": "***3ed559705e43fb7b***",
              "authProtocol": "SHA",
              "privPassword": "***2c576243c92fb21d***",
              "privProtocol": "DES",
              "securityLevel": "AUTH_PRIV",
              "type": "SNMPv3",
              "useCredentialVault": false,
              "userName": "NETZWERK"
            },
            "ip": "10.138.152.254",
            "port": 161
          }
        ]
      },
      "vars": {},
      "version": "3.0.4"
    })
}
