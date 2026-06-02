resource "dynatrace_custom_service" "MongoDB_Calls" {
  name                = "MongoDB Calls"
  enabled             = false
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.mongodb.internal.connection.CommandProtocolImpl"
      match = "EQUALS"
    }
    method {
      name       = "executeAsync"
      arguments  = [ "com.mongodb.internal.connection.InternalConnection", "com.mongodb.internal.async.SingleResultCallback" ]
      returns    = "void"
      visibility = "PUBLIC"
    }
  }
}
