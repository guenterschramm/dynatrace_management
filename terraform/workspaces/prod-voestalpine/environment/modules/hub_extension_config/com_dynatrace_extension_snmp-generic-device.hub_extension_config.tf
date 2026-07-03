resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-generic-device" {
  name              = "com.dynatrace.extension.snmp-generic-device"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "BG88",
      "dtAttributes": {
        "dt.cost.costcenter": "network",
        "dt.cost.product": "cisco",
        "dt.security_context": "network"
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
              "community": "***60504cee22404f63***",
              "type": "SNMPv2c",
              "useCredentialVault": false
            },
            "ip": "10.163.32.39",
            "port": 161
          },
          {
            "authentication": {
              "community": "***d34f46784a562218***",
              "type": "SNMPv2c",
              "useCredentialVault": false
            },
            "ip": "10.163.32.80",
            "port": 161
          }
        ]
      },
      "vars": {},
      "version": "3.0.4"
    })
}
