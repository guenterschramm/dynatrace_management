resource "dynatrace_metric_metadata" "Hours_passed_since_last_backup" {
  description  = "Number of hours passed since last backup"
  display_name = "Hours passed since last backup"
  metric_id    = "metric-sql-server.databases.backup.hoursPassed"
  unit         = "Hour"
  dimensions {
    dimension {
      display_name = "Instance name"
      key          = "instance"
    }
    dimension {
      display_name = "Database name"
      key          = "database"
    }
  }
}
