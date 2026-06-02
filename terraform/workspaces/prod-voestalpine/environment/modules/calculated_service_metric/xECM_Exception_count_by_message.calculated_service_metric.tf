resource "dynatrace_calculated_service_metric" "xECM_Exception_count_by_message" {
  name                    = "xECM Exception count by message"
  enabled                 = true
  # ignore_muted_requests = false
  management_zones        = [ "xECM Steel" ]
  metric_key              = "calc:service.xecmexceptioncountbymessage"
  unit                    = "COUNT"
  conditions {
    condition {
      attribute = "EXCEPTION_MESSAGE"
      comparison {
        # negate = false
        string {
          # case_sensitive = false
          operator         = "EXISTS"
        }
      }
    }
  }
  dimension_definition {
    name              = "Exception message"
    dimension         = "{Exception:Message}"
    top_x             = 100
    top_x_aggregation = "SUM"
    top_x_direction   = "DESCENDING"
  }
  metric_definition {
    metric = "EXCEPTION_COUNT"
  }
}
