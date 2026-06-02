resource "dynatrace_custom_service" "SAP_PI_File" {
  name                = "SAP PI File"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.sap.aii.adapter.file.File2XI"
      match = "EQUALS"
    }
    method {
      name    = "invoke"
      returns = "void"
    }
  }
  rule {
    enabled = true
    class {
      name  = "com.sap.aii.adapter.file.File2XI"
      match = "EQUALS"
    }
    method {
      name    = "send"
      returns = "void"
    }
  }
}
