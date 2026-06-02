resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-generic-device" {
  name              = "com.dynatrace.extension.snmp-generic-device"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon US 2161 Generic",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2157",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "\"Nedcon_POC,network\""
      },
      "enabled": false,
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
              "community": "***c244ae0bed137172***",
              "type": "SNMPv2c",
              "useCredentialVault": false
            },
            "ip": "10.138.152.253",
            "port": 161
          },
          {
            "authentication": {
              "community": "***88c8d94d51a42d72***",
              "type": "SNMPv2c",
              "useCredentialVault": false
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
