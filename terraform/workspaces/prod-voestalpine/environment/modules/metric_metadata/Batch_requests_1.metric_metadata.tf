resource "dynatrace_metric_metadata" "Batch_requests_1" {
  description        = "Number of Transact-SQL command batches received"
  display_name       = "Batch requests"
  metric_id          = "metric-sql-server.sql.batchRequests.count"
  source_entity_type = "sql:sql_server_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Instance name"
      key          = "instance"
    }
    dimension {
      display_name = "Server name"
      key          = "server"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
