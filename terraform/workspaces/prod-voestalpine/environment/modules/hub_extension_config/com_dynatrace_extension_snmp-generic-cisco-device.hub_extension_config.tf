resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-generic-cisco-device" {
  name              = "com.dynatrace.extension.snmp-generic-cisco-device"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "BG88 - Cisco",
      "dtAttributes": {
        "dt.cost.costcenter": "network",
        "dt.cost.product": "cisco",
        "dt.security_context": "network"
      },
      "enabled": false,
      "featureSets": [
        "BGP",
        "Cisco BGP",
        "Control Plane",
        "EIGRP",
        "FRUs",
        "Health",
        "High availability",
        "Interfaces",
        "Interfaces 32-bit",
        "Interfaces 64-bit",
        "Memory pools",
        "OSPF",
        "Power supply",
        "Sensors",
        "Sensors (Advanced)",
        "Traffic",
        "Advanced interfaces"
      ],
      "snmp": {
        "devices": [
          {
            "authentication": {
              "community": "***1925f55dcb8b06d5***",
              "type": "SNMPv2c",
              "useCredentialVault": false
            },
            "ip": "10.163.32.39",
            "port": 161
          },
          {
            "authentication": {
              "community": "***d741673b148b61b6***",
              "type": "SNMPv2c",
              "useCredentialVault": false
            },
            "ip": "10.163.32.80",
            "port": 161
          }
        ]
      },
      "vars": {},
      "version": "3.4.10"
    })
}
