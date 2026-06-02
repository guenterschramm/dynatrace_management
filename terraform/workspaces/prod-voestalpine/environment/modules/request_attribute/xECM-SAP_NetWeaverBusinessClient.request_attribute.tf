resource "dynatrace_request_attribute" "xECM-SAP_NetWeaverBusinessClient" {
  name                         = "xECM - SAP NetWeaverBusinessClient"
  enabled                      = true
  aggregation                  = "FIRST"
  # confidential               = false
  data_type                    = "STRING"
  normalization                = "ORIGINAL"
  # skip_personal_data_masking = false
  data_sources {
    enabled                        = true
    capturing_and_storage_location = "CAPTURE_AND_STORE_ON_SERVER"
    parameter_name                 = "User-Agent"
    source                         = "REQUEST_HEADER"
    scope {
      host_group = "HOST_GROUP-430A224AD7944963"
    }
    value_processing {
      # split_at = ""
      # trim     = false
      value_condition {
        # negate = false
        operator = "CONTAINS"
        value    = "SAP NetWeaverBusinessClient"
      }
    }
  }
}
