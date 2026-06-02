resource "dynatrace_custom_service" "DOESocketTransport" {
  name                = "DOESocketTransport"
  enabled             = false
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "vai.remote.transport.impl.DOESocketTransport$DOEReader"
      match = "EQUALS"
    }
    method {
      name       = "run"
      returns    = "void"
      visibility = "PUBLIC"
    }
  }
}
