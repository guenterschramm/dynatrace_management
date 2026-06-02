resource "dynatrace_hub_extension_config" "com_dynatrace_extension_snmp-auto-discovery" {
  name              = "com.dynatrace.extension.snmp-auto-discovery"
  active_gate_group = "nedcon_us_2161"
  # host            = ""
  # host_group      = ""
  # management_zone = ""
  scope             = "ag_group-nedcon_us_2161"
  value             = jsonencode({
      "activationContext": "REMOTE",
      "description": "Nedcon US 2161 Autodiscovery",
      "dtAttributes": {
        "dt.cost.costcenter": "nedcon_2157",
        "dt.cost.product": "nedcon_us_2161",
        "dt.security_context": "\"Nedcon_POC,network\""
      },
      "enabled": false,
      "featureSets": [
        "self-monitoring"
      ],
      "pythonRemote": {
        "debugLogging": false,
        "groups": [
          {
            "addresses": [
              "10.138.152.1/24"
            ],
            "authentication": {
              "community": "***765ad9142177f1ff***",
              "useCredentialVault": false,
              "version": "SNMPv2c"
            },
            "label": "Nedcon US 2161",
            "port": 161
          }
        ],
        "scanner": {
          "frequency": 5,
          "neighbors": true,
          "profile": "HIGH",
          "token": "***f25eb0d01feaf49b***"
        }
      },
      "version": "4.1.5"
    })
}
