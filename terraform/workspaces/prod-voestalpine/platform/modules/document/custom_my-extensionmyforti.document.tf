resource "dynatrace_document" "custom_my-extensionmyforti" {
  name    = "custom:my-extensionmyforti"
  type    = "extension-yaml"
  content =<<-EOT
    name: "custom:my-extensionmyforti"
    minDynatraceVersion: "1.303.0"
    author:
      name: "Custom Extensions Creator App"
    version: "0.0.1"
    snmp:
      - group: "sample OIDs"
        metrics:
          - key: "sysUpTime"
            value: "oid:1.3.6.1.2.1.1.3.0"
            type: "gauge"
    EOT
  private = true
}
