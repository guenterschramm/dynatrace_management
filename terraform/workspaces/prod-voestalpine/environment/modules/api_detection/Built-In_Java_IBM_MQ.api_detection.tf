resource "dynatrace_api_detection" "Built-In_Java_IBM_MQ" {
  api_color       = "#ffd0ab"
  api_name        = "Built-In Java IBM MQ"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkNTJiMDJkYWEtM2QwNi0zY2RjLThkMzQtMjQ3NjNmMjE1ZDg0vu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.ibm.mq."
    }
  }
}
