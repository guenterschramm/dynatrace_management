resource "dynatrace_metric_metadata" "Percent_of_Elapsed_time_for_Requests_wait_type" {
  description        = "Percentage of elapsed time for requests wait type performance counter_name"
  display_name       = "Percent of Elapsed time for Requests wait type"
  metric_id          = "metric-sql-server.locks.elapsedTimeRequestsPercent"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Percent"
  dimensions {
    dimension {
      display_name = "Instance name"
      key          = "instance"
    }
    dimension {
      display_name = "Server name"
      key          = "server"
    }
    dimension {
      display_name = "Counter name"
      key          = "counter_name"
    }
  }
  metric_properties {
    max_value  = 100
    min_value  = 0
    value_type = "error"
  }
}
