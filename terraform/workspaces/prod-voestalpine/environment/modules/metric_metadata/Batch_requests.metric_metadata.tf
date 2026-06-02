resource "dynatrace_metric_metadata" "Batch_requests" {
  description        = "Number of Transact-SQL command batches received"
  display_name       = "Batch requests"
  metric_id          = "metric-sql-server.local.sql.batchRequests.count"
  source_entity_type = "sql:sql_server_local_instance"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Host"
      key          = "host"
    }
  }
  metric_properties {
    min_value  = 0
    value_type = "error"
  }
}
