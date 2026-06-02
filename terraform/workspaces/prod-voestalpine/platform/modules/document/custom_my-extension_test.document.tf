resource "dynatrace_document" "custom_my-extension_test" {
  name    = "custom:my-extension.test"
  type    = "extension-yaml"
  content =<<-EOT
    name: "custom:my-extension.test"
    minDynatraceVersion: "1.303.0"
    author:
      name: "Custom Extensions Creator App"
    version: "0.0.1"
    sqlServer:
      - group: "sample queries"
        query: "SELECT count(*) as count FROM table"
        metrics:
          - key: "quantity"
            value: "col:count"
            type: "gauge"
    EOT
  private = true
}
