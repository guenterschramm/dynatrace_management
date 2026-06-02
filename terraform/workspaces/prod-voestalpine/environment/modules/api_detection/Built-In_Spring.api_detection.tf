resource "dynatrace_api_detection" "Built-In_Spring" {
  api_color       = "#debbf3"
  api_name        = "Built-In Spring"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkNzg2OGNiMWYtNjk5My0zMWU1LWJkYjItMTc1ZmNjM2E0MWE0vu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.springframework."
    }
  }
}
