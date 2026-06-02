resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-generic-cisco-device_1" {
  name              = "com.dynatrace.extension.snmp-generic-cisco-device"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon US 2161 Cisco v3",
      "dtAttributes": {
        "dt.cost.costcenter": "network",
        "dt.cost.product": "cisco",
        "dt.security_context": "network"
      },
      "enabled": true,
      "featureSets": [
        "Advanced interfaces",
        "BGP",
        "Cisco BGP",
        "Control Plane",
        "EIGRP",
        "entity-enrichment",
        "FRUs",
        "Health",
        "High availability",
        "Interfaces",
        "Interfaces 32-bit",
        "Interfaces 64-bit",
        "Memory pools",
        "neighbor-discovery",
        "OSPF",
        "Power supply",
        "Sensors",
        "Sensors (Advanced)",
        "Traffic"
      ],
      "snmp": {
        "devices": [
          {
            "authentication": {
              "authPassword": "***9c222e997dd1f1d1***",
              "authProtocol": "SHA",
              "privPassword": "***29ae3b7fd7e3613a***",
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
              "authPassword": "***a4b997e24854e486***",
              "authProtocol": "SHA",
              "privPassword": "***41f2add41a2c6757***",
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
      "version": "4.0.8"
    })
}
