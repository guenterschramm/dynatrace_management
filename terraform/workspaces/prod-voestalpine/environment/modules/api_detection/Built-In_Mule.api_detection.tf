resource "dynatrace_api_detection" "Built-In_Mule" {
  api_color       = "#008cdb"
  api_name        = "Built-In Mule"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYjdkMDJkNGMtNmY1MS0zOThhLTg0NGEtMGQxZWQxNzZhYzdjvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.mule."
    }
  }
}
