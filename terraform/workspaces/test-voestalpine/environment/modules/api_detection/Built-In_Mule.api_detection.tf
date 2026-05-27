resource "dynatrace_api_detection" "Built-In_Mule" {
  api_color       = "#008cdb"
  api_name        = "Built-In Mule"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZDU5NDhmNmYtNjM5MC0zMDM0LWE5YjMtZDNlNTY2NDU5N2Q3vu9U3hXa3q0"
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
