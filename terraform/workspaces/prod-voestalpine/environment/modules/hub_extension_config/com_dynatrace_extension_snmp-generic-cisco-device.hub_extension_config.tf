resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-generic-cisco-device" {
  name              = "com.dynatrace.extension.snmp-generic-cisco-device"
  active_gate_group = "default"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-default"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Network - WLAN Core router Linz",
      "dtAttributes": {
        "dt.cost.costcenter": "cisco",
        "dt.cost.product": "network",
        "dt.security_context": "network"
      },
      "enabled": true,
      "featureSets": [
        "Control Plane",
        "Interfaces",
        "Interfaces 64-bit",
        "Traffic",
        "OSPF",
        "neighbor-discovery",
        "Power supply"
      ],
      "snmp": {
        "devices": [
          {
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-BEB60FA211474B83",
              "type": "SNMPv3",
              "useCredentialVault": true
            },
            "ip": "10.233.0.25",
            "port": 161
          },
          {
            "authentication": {
              "credentialVaultIdSnmpV3": "CREDENTIALS_VAULT-BEB60FA211474B83",
              "type": "SNMPv3",
              "useCredentialVault": true
            },
            "ip": "10.233.0.24",
            "port": 161
          }
        ]
      },
      "vars": {},
      "version": "4.0.9"
    })
}
