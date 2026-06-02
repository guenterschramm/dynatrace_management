resource "dynatrace_metric_metadata" "Failed_Distributed_Transactions" {
  description        = "The number of failed distributed transactions"
  display_name       = "Failed Distributed Transactions"
  metric_id          = "metric-sql-server.databases.failedDistributedTransactions.count"
  source_entity_type = "sql:sql_server_database"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Instance Name"
      key          = "instance"
    }
    dimension {
      display_name = "Database Name"
      key          = "database"
    }
    dimension {
      display_name = "Server Name"
      key          = "server"
    }
  }
}
