resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-generic-cisco-device" {
  name              = "com.dynatrace.extension.snmp-generic-cisco-device"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon US 2161 Cisco",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2157",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "\"Nedcon_POC,network\""
      },
      "enabled": false,
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
              "community": "***7c519f418eb22f00***",
              "type": "SNMPv2c",
              "useCredentialVault": false
            },
            "ip": "10.138.152.253",
            "port": 161
          },
          {
            "authentication": {
              "community": "***bdd81a3b3c4772b3***",
              "type": "SNMPv2c",
              "useCredentialVault": false
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
