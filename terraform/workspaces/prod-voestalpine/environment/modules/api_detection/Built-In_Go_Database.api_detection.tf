resource "dynatrace_api_detection" "Built-In_Go_Database" {
  api_color       = "#fff29a"
  api_name        = "Built-In Go Database"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkOTg2N2RiM2QtOWY3NC0zNGVhLTk1ZWUtNDE1YTlhOGQ1YTAxvu9U3hXa3q0"
  technology      = "Go"
  third_party_api = true
  conditions {
    condition {
      base    = "PACKAGE"
      matcher = "BEGINS_WITH"
      pattern = "database"
    }
  }
}
