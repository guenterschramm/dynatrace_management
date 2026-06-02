resource "dynatrace_metric_metadata" "SQL_Agent_Status" {
  description        = "The status of the SQL Server Agent on the database instance"
  display_name       = "SQL Agent Status"
  metric_id          = "metric-sql-server.agent.status"
  source_entity_type = "sql:sql_server_agent"
  unit               = "Unspecified"
  dimensions {
    dimension {
      display_name = "Service Name"
      key          = "service_name"
    }
    dimension {
      display_name = "Startup Type"
      key          = "startup_type"
    }
    dimension {
      display_name = "Status description"
      key          = "status_description"
    }
    dimension {
      display_name = "Service Account"
      key          = "service_account"
    }
    dimension {
      display_name = "Cluster Node Name"
      key          = "cluster_node_name"
    }
  }
}
