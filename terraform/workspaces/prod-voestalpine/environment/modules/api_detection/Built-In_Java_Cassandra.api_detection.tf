resource "dynatrace_api_detection" "Built-In_Java_Cassandra" {
  api_color       = "#debbf3"
  api_name        = "Built-In Java Cassandra"
  insert_after    = "vu9U3hXa3q0AAAABABxidWlsdGluOmFwaXMuZGV0ZWN0aW9uLXJ1bGVzAAZ0ZW5hbnQABnRlbmFudAAkYzU2N2UzOWYtNDI5My0zYzMxLWFmNDUtNGM2YjM1ZmE5NWRlvu9U3hXa3q0"
  technology      = "Java"
  third_party_api = true
  conditions {
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "me.prettyprint.cassandra."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.datastax."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "org.apache.cassandra."
    }
    condition {
      base    = "FQCN"
      matcher = "BEGINS_WITH"
      pattern = "com.netflix.astyanax."
    }
  }
}
