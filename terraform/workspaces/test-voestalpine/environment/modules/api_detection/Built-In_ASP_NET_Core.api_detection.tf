resource "dynatrace_api_detection" "Built-In_ASP_NET_Core" {
  api_color       = "#008cdb"
  api_name        = "Built-In ASP.NET Core"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkZmU5ZDc5YzEtNGEwYi0zMzI3LWI4ZTktYjU0YzEyMzAzYmQwvu9U3hXa3q0"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "Microsoft.AspNetCore."
    }
  }
}
