resource "dynatrace_request_attribute" "RFC_Function" {
  name                       = "RFC Function"
  enabled                    = true
  aggregation                = "FIRST"
  # confidential             = false
  data_type                  = "STRING"
  normalization              = "ORIGINAL"
  skip_personal_data_masking = true
  data_sources {
    enabled    = true
    source     = "METHOD_PARAM"
    technology = "JAVA"
    methods {
      argument_index = 2
      capture        = "ARGUMENT"
      method {
        argument_types = [ "com.sap.conn.jco.rt.ClientConnection", "java.lang.String", "com.sap.conn.jco.rt.DefaultParameterList", "com.sap.conn.jco.rt.DefaultParameterList", "com.sap.conn.jco.rt.DefaultParameterList", "com.sap.conn.jco.rt.DefaultParameterList", "boolean", "com.sap.conn.jco.AbapClassException$Mode" ]
        class_name     = "com.sap.conn.jco.rt.JCoMiddleware$Client"
        method_name    = "execute"
        modifiers      = [ "ABSTRACT" ]
        return_type    = "void"
        visibility     = "PUBLIC"
      }
    }
  }
  data_sources {
    enabled    = true
    source     = "METHOD_PARAM"
    technology = "JAVA"
    methods {
      argument_index     = 2
      capture            = "ARGUMENT"
      deep_object_access = ".getName()"
      method {
        argument_types = [ "com.sap.conn.jco.server.JCoServerContext", "com.sap.conn.jco.JCoRequest", "com.sap.conn.jco.JCoResponse" ]
        class_name     = "com.sap.conn.jco.server.JCoServerRequestHandler"
        method_name    = "handleRequest"
        modifiers      = [ "ABSTRACT" ]
        return_type    = "void"
        visibility     = "PUBLIC"
      }
    }
  }
  data_sources {
    enabled    = true
    source     = "METHOD_PARAM"
    technology = "JAVA"
    methods {
      argument_index     = 2
      capture            = "ARGUMENT"
      deep_object_access = ".getName()"
      method {
        argument_types = [ "com.sap.conn.jco.server.JCoServerContext", "com.sap.conn.jco.JCoFunction" ]
        class_name     = "com.sap.conn.jco.server.JCoServerFunctionHandler"
        method_name    = "handleRequest"
        modifiers      = [ "ABSTRACT" ]
        return_type    = "void"
        visibility     = "PUBLIC"
      }
    }
  }
  data_sources {
    enabled    = true
    source     = "METHOD_PARAM"
    technology = "DOTNET"
    methods {
      argument_index     = 0
      capture            = "THIS"
      deep_object_access = ".ToString()"
      method {
        argument_types = [ "SAP.Middleware.Connector.RfcDestination" ]
        class_name     = "SAP.Middleware.Connector.RfcFunction"
        method_name    = "Invoke"
        return_type    = "System.Void"
        visibility     = "PUBLIC"
      }
    }
    value_processing {
      # split_at = ""
      trim       = true
      extract_substring {
        delimiter     = "FUNCTION"
        end_delimiter = "("
        position      = "BETWEEN"
      }
    }
  }
}
