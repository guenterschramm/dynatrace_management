resource "dynatrace_custom_service" "SAP_JCo" {
  name                = "SAP JCo"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.sap.conn.jco.rt.JCoMiddleware$Client"
      match = "EQUALS"
    }
    method {
      name      = "execute"
      arguments = [ "com.sap.conn.jco.rt.ClientConnection", "java.lang.String", "com.sap.conn.jco.rt.DefaultParameterList", "com.sap.conn.jco.rt.DefaultParameterList", "com.sap.conn.jco.rt.DefaultParameterList", "com.sap.conn.jco.rt.DefaultParameterList", "boolean", "com.sap.conn.jco.AbapClassException$Mode" ]
      returns   = "void"
    }
  }
  rule {
    enabled = true
    class {
      name  = "com.sap.conn.jco.server.JCoServerFunctionHandler"
      match = "EQUALS"
    }
    method {
      name    = "handleRequest"
      returns = "void"
    }
  }
  rule {
    enabled = true
    class {
      name  = "com.sap.conn.jco.server.JCoServerRequestHandler"
      match = "EQUALS"
    }
    method {
      name    = "handleRequest"
      returns = "void"
    }
  }
  rule {
    enabled = true
    class {
      name  = "com.sap.mw.jco.JCO$Server"
      match = "EQUALS"
    }
    method {
      name    = "handleRequest"
      returns = "void"
    }
  }
}
