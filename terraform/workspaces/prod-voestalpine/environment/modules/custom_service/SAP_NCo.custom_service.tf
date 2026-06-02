resource "dynatrace_custom_service" "SAP_NCo" {
  name                = "SAP NCo"
  enabled             = true
  # queue_entry_point = false
  technology          = "dotNet"
  rule {
    enabled = true
    class {
      name  = "SAP.Middleware.Connector.RfcFunction"
      match = "EQUALS"
    }
    method {
      name      = "Invoke"
      arguments = [ "SAP.Middleware.Connector.RfcDestination" ]
      returns   = "System.Void"
    }
  }
}
