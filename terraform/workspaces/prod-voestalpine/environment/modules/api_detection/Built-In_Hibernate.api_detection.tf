resource "dynatrace_api_detection" "Built-In_Hibernate" {
  api_color       = "#522273"
  api_name        = "Built-In Hibernate"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkNDZlOGY3YTMtYzA5Mi0zZDY5LThjNTItOGUxMDc2NTRlODQ3vu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.hibernate."
    }
  }
}
