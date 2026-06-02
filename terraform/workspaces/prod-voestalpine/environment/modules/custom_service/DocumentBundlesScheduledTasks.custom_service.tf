resource "dynatrace_custom_service" "DocumentBundlesScheduledTasks" {
  name                = "DocumentBundlesScheduledTasks"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.document.DocumentBundlesScheduledTasks"
      match = "EQUALS"
    }
    method {
      name       = "deleteExpiredBundles"
      modifiers  = [ "FINAL" ]
      returns    = "void"
      visibility = "PUBLIC"
    }
  }
}
