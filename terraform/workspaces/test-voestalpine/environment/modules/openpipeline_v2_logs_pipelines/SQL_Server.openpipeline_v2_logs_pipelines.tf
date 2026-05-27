resource "dynatrace_openpipeline_v2_logs_pipelines" "SQL_Server" {
  custom_id    = "extension.sql-server-logs"
  display_name = "SQL Server"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.sql-server"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.1.2"
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Attach logs to DB_INSTANCE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_INSTANCE_MSSQL_logs_enrichment"
        matcher     = "isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(server) AND isNotNull(instance)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.db_instance_mssql"
          node_type          = "DB_INSTANCE_MSSQL"
          id_components {
            id_component {
              id_component          = "db.connection_details.hostname"
              referenced_field_name = "device.name"
            }
            id_component {
              id_component          = "db.connection_details.port"
              referenced_field_name = "device.port"
            }
            id_component {
              id_component          = "host.name"
              referenced_field_name = "server"
            }
            id_component {
              id_component          = "db.instance.name"
              referenced_field_name = "instance"
            }
          }
        }
      }
      processor {
        description = "Attach logs to DB_DATABASE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_DATABASE_MSSQL_logs_enrichment"
        matcher     = "isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(server) AND isNotNull(instance) AND isNotNull(database)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.db_database_mssql"
          node_type          = "DB_DATABASE_MSSQL"
          id_components {
            id_component {
              id_component          = "db.connection_details.hostname"
              referenced_field_name = "device.name"
            }
            id_component {
              id_component          = "db.connection_details.port"
              referenced_field_name = "device.port"
            }
            id_component {
              id_component          = "host.name"
              referenced_field_name = "server"
            }
            id_component {
              id_component          = "db.instance.name"
              referenced_field_name = "instance"
            }
            id_component {
              id_component          = "db.database.name"
              referenced_field_name = "database"
            }
          }
        }
      }
    }
  }
  storage {
    processors {
      processor {
        description = "Default database logs bucket assignment"
        type        = "bucketAssignment"
        enabled     = true
        id          = "extension.sql-server-logs.storage"
        matcher     = "true"
        bucket_assignment {
          bucket_name = "default_database_monitoring"
        }
      }
    }
  }
}
