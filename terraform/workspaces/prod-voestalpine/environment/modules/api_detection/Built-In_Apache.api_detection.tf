resource "dynatrace_api_detection" "Built-In_Apache" {
  api_color       = "#2ab6f4"
  api_name        = "Built-In Apache"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYjAyODlhY2UtZjhkOC0zNzU2LTg0YzctN2U3NzVmMzE3ODQ5vu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.apache."
    }
  }
}
