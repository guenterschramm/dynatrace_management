resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-auto-discovery_1" {
  name              = "com.dynatrace.extension.snmp-auto-discovery"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon US 2161 Autodiscovery v3",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2151",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "Nedcon_POC"
      },
      "enabled": true,
      "featureSets": [
        "self-monitoring"
      ],
      "pythonRemote": {
        "debugLogging": false,
        "groups": [
          {
            "addresses": [
              "10.138.152.0/24"
            ],
            "authentication": {
              "auth_password": "***5a9bff62cab7538e***",
              "auth_protocol": "SHA",
              "priv_password": "***af8f63cf749d65bd***",
              "priv_protocol": "DES",
              "security_level": "AUTH_PRIV",
              "useCredentialVault": false,
              "username": "NETZWERK",
              "version": "SNMPv3"
            },
            "label": "Nedcon US 2161 Autodiscovery v3",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 10,
          "neighbors": true,
          "profile": "HIGH",
          "token": "***0214a34e7a3862aa***"
        }
      },
      "version": "4.1.5"
    })
}
