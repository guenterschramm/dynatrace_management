resource "dynatrace_api_detection" "Built-In_NET_RabbitMQ" {
  api_color       = "#aeebf0"
  api_name        = "Built-In .NET RabbitMQ"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYmM2NmEyYmUtZWUxZi0zMDA5LTg2OTktNTNiN2NlZDE0MDE0vu9U3hXa3q0"
  technology      = "dotNet"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "RabbitMQ."
    }
  }
}
