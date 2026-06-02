resource "dynatrace_request_attribute" "xECM-func" {
  name                         = "xECM - func"
  enabled                      = true
  aggregation                  = "FIRST"
  # confidential               = false
  data_type                    = "STRING"
  normalization                = "ORIGINAL"
  # skip_personal_data_masking = false
  data_sources {
    enabled                        = true
    capturing_and_storage_location = "CAPTURE_AND_STORE_ON_SERVER"
    parameter_name                 = "func"
    source                         = "QUERY_PARAMETER"
    scope {
      host_group         = "HOST_GROUP-430A224AD7944963"
      service_technology = "ASP_DOTNET"
    }
  }
}
