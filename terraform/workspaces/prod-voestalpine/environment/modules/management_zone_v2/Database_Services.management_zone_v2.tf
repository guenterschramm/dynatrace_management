resource "dynatrace_management_zone_v2" "Database_Services" {
  name        = "Database Services"
  description = "SQL and Oracle Datahosts"
  rules {
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            key      = "HOST_TAGS"
            operator = "EQUALS"
            tag      = "Application:SQL Server"
          }
        }
      }
    }
    rule {
      type    = "DIMENSION"
      enabled = true
      dimension_rule {
        applies_to = "LOG"
        dimension_conditions {
          condition {
            condition_type = "DIMENSION"
            key            = "dt.host_group.id"
            rule_matcher   = "BEGINS_WITH"
            value          = "database"
          }
        }
      }
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("python:certificate_monitor_certificate"),monitoring_config("Database SSL Certificate")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_agent)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_availability_replica)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_availability_group)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_availability_database)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_host)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_local_instance)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_database)"
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector = "type(sql:sql_server_instance)"
    }
  }
}
