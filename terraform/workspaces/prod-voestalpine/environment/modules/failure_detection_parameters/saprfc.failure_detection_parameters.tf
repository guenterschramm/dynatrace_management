resource "dynatrace_failure_detection_parameters" "saprfc" {
  name        = "saprfc"
  description = "Ignore NO_DATA_FOUND ABAP Exceptions"
  broken_links {
    http_404_not_found_failures = false
  }
  exception_rules {
    ignore_all_exceptions         = false
    ignore_span_failure_detection = false
    ignored_exceptions {
      custom_handled_exception {
        class_pattern   = "com.sap.conn.jco.AbapException"
        message_pattern = "NO_DATA_FOUND"
      }
      custom_handled_exception {
        class_pattern   = "SAP.Middleware.Connector.RfcAbapException"
        message_pattern = "NO_DATA_AVAILABLE"
      }
    }
  }
  http_response_codes {
    client_side_errors                        = "400-599"
    fail_on_missing_response_code_client_side = false
    fail_on_missing_response_code_server_side = false
    server_side_errors                        = "500-599"
  }
}
