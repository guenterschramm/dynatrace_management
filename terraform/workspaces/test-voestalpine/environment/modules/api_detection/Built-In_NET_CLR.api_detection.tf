resource "dynatrace_api_detection" "Built-In_NET_CLR" {
  api_color       = "#7c38a1"
  api_name        = "Built-In .NET CLR"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkMWU4Mzc0YjgtYzYzYy0zNjM2LTlmMmItNWQ2N2FkNDM1MzRjvu9U3hXa3q0"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "System."
    }
  }
}
