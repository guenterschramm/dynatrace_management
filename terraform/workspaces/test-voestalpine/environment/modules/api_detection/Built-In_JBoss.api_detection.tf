resource "dynatrace_api_detection" "Built-In_JBoss" {
  api_color       = "#fff29a"
  api_name        = "Built-In JBoss"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYzhiNmU2ZDAtMjZjZC0zN2E0LTk1YjktOTlhNmIzOTZhMmQxvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.jboss."
    }
  }
}
