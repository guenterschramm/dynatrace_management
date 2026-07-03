resource "dynatrace_openpipeline_v2_metrics_pipelines" "SQL_Server" {
  custom_id    = "extension.sql-server-metrics"
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
  processing {
    processors {
      processor {
        description = "Instance entity name extraction"
        type        = "dql"
        enabled     = true
        id          = "extension.sql-server-metrics.instance-entity-name"
        matcher     = "matchesValue(metric.key, \"sql-server.uptime\")"
        dql {
          script = "fieldsAdd instance_display_name = concat(instance, \"@\", server)"
        }
      }
      processor {
        description = "Instance entity name extraction"
        type        = "dql"
        enabled     = true
        id          = "extension.sql-server-metrics.db-system"
        matcher     =<<-EOT
          matchesValue(metric.key, "sql-server.uptime") OR matchesValue(metric.key, "sql-server.databases.state") OR matchesValue(metric.key, "sql-server.always-on.ag.automatedBackupPreference") OR matchesValue(metric.key, "sql-server.always-on.ar.failoverMode") OR matchesValue(metric.key, "sql-server.always-on.db.state")
        EOT
        dql {
          script = "fieldsAdd db.system=\"mssql\""
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Create DB_INSTANCE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_INSTANCE_MSSQL_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"sql-server.uptime\")"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_instance_mssql"
          node_type          = "DB_INSTANCE_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "db.instance.version"
              referenced_field_name = "server_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.instance.name"
              referenced_field_name = "instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "edition"
              referenced_field_name = "edition"
            }
            smartscape_field_extraction_entry {
              field_name            = "major_version"
              referenced_field_name = "major_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "server"
            }
            smartscape_field_extraction_entry {
              field_name            = "start_time"
              referenced_field_name = "start_time"
            }
            smartscape_field_extraction_entry {
              field_name            = "affinity_type"
              referenced_field_name = "affinity_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "cpu_count"
              referenced_field_name = "cpu_count"
            }
            smartscape_field_extraction_entry {
              field_name            = "physical_memory"
              referenced_field_name = "physical_memory"
            }
            smartscape_field_extraction_entry {
              field_name            = "hyperthread_ratio"
              referenced_field_name = "hyperthread_ratio"
            }
            smartscape_field_extraction_entry {
              field_name            = "virtual_machine_type"
              referenced_field_name = "virtual_machine_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details"
              referenced_field_name = "device"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.port"
              referenced_field_name = "device.port"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.ip"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.hostname"
              referenced_field_name = "device.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.system"
              referenced_field_name = "db.system"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "endpoint_metadata"
              referenced_field_name = "endpoint_metadata"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.sql:sql_server_instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
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
          node_name {
            type = "field"
            field {
              source_field_name = "instance_display_name"
            }
          }
        }
      }
      processor {
        description = "Create DB_INSTANCE_MSSQL node (AWS fields)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_INSTANCE_MSSQL_metrics_extraction_aws"
        matcher     = "matchesValue(metric.key, \"sql-server.uptime\") and (isNotNull(aws.account.id) or isNotNull(aws.region))"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_instance_mssql"
          node_type          = "DB_INSTANCE_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
          }
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
          node_name {
            type = "field"
            field {
              source_field_name = "instance_display_name"
            }
          }
        }
      }
      processor {
        description = "Create DB_INSTANCE_MSSQL node (Azure fields)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_INSTANCE_MSSQL_metrics_extraction_azure"
        matcher     = "matchesValue(metric.key, \"sql-server.uptime\") and (isNotNull(azure.location) or isNotNull(azure.resource.group) or isNotNull(azure.subscription))"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_instance_mssql"
          node_type          = "DB_INSTANCE_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
          }
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
          node_name {
            type = "field"
            field {
              source_field_name = "instance_display_name"
            }
          }
        }
      }
      processor {
        description = "Create DB_INSTANCE_MSSQL node (GCP fields)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_INSTANCE_MSSQL_metrics_extraction_gcp"
        matcher     = "matchesValue(metric.key, \"sql-server.uptime\") and (isNotNull(gcp.project.id) or isNotNull(gcp.region))"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_instance_mssql"
          node_type          = "DB_INSTANCE_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
          }
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
          node_name {
            type = "field"
            field {
              source_field_name = "instance_display_name"
            }
          }
        }
      }
      processor {
        description = "Create DB_INSTANCE_MSSQL node (K8s fields)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_INSTANCE_MSSQL_metrics_extraction_k8s"
        matcher     = "matchesValue(metric.key, \"sql-server.uptime\") and (isNotNull(k8s.cluster.name) or isNotNull(k8s.namespace.name))"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_instance_mssql"
          node_type          = "DB_INSTANCE_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
          }
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
          node_name {
            type = "field"
            field {
              source_field_name = "instance_display_name"
            }
          }
        }
      }
      processor {
        description = "Attach metrics to DB_INSTANCE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_INSTANCE_MSSQL_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"sql-server*\")"
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
        description = "Create DB_DATABASE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_DATABASE_MSSQL_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"sql-server.databases.state\") AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(database) AND isNotNull(server) AND isNotNull(instance)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_database_mssql"
          node_type          = "DB_DATABASE_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "db.system"
              referenced_field_name = "db.system"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.ip"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.hostname"
              referenced_field_name = "device.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.port"
              referenced_field_name = "device.port"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details"
              referenced_field_name = "device"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.instance.name"
              referenced_field_name = "instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.database.name"
              referenced_field_name = "database"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "server"
            }
            smartscape_field_extraction_entry {
              field_name            = "state"
              referenced_field_name = "database.state"
            }
            smartscape_field_extraction_entry {
              field_name            = "recovery_model"
              referenced_field_name = "database.recovery_model"
            }
            smartscape_field_extraction_entry {
              field_name            = "user_access"
              referenced_field_name = "database.user_access"
            }
            smartscape_field_extraction_entry {
              field_name            = "updateability"
              referenced_field_name = "database.updateability"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "endpoint_metadata"
              referenced_field_name = "endpoint_metadata"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.sql:sql_server_database"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
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
          node_name {
            type = "field"
            field {
              source_field_name = "database"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.db_instance_mssql"
              target_type          = "DB_INSTANCE_MSSQL"
            }
          }
        }
      }
      processor {
        description = "Attach metrics to DB_DATABASE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_DATABASE_MSSQL_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"sql-server*\") AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(database) AND isNotNull(server) AND isNotNull(instance)"
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
      processor {
        description = "Create DB_AVAILABILITY_GROUP_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_AVAILABILITY_GROUP_MSSQL_metrics_extraction"
        matcher     =<<-EOT
          (matchesValue(metric.key, "sql-server.always-on.ag.automatedBackupPreference") OR matchesValue(metric.key, "sql-server.always-on.ag.primaryRecoveryHealth") OR matchesValue(metric.key, "sql-server.always-on.ag.secondaryRecoveryHealth") OR matchesValue(metric.key, "sql-server.always-on.ag.synchronizationHealth")) AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(availability.group.id)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_availability_group_mssql"
          node_type          = "DB_AVAILABILITY_GROUP_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "db.system"
              referenced_field_name = "db.system"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.ip"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.hostname"
              referenced_field_name = "device.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.port"
              referenced_field_name = "device.port"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details"
              referenced_field_name = "device"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "endpoint_metadata"
              referenced_field_name = "endpoint_metadata"
            }
            smartscape_field_extraction_entry {
              field_name            = "backup_preference"
              referenced_field_name = "availability.group.automated_backup_preference"
            }
            smartscape_field_extraction_entry {
              field_name            = "primary_recovery_health"
              referenced_field_name = "availability.group.primary_recovery_health"
            }
            smartscape_field_extraction_entry {
              field_name            = "secondary_recovery_health"
              referenced_field_name = "availability.group.secondary_recovery_health"
            }
            smartscape_field_extraction_entry {
              field_name            = "synchronization_health"
              referenced_field_name = "availability.group.synchronization_health"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.sql:sql_server_availability_group"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
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
              id_component          = "availability_group_id"
              referenced_field_name = "availability.group.id"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "availability.group.name"
            }
          }
        }
      }
      processor {
        description = "Attach metrics to DB_AVAILABILITY_GROUP_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_AVAILABILITY_GROUP_MSSQL_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"sql-server*\") AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(availability.group.id)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.db_availability_group_mssql"
          node_type          = "DB_AVAILABILITY_GROUP_MSSQL"
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
              id_component          = "availability_group_id"
              referenced_field_name = "availability.group.id"
            }
          }
        }
      }
      processor {
        description = "Create DB_AVAILABILITY_REPLICA_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_AVAILABILITY_REPLICA_MSSQL_metrics_extraction"
        matcher     =<<-EOT
          (matchesValue(metric.key, "sql-server.always-on.ar.failoverMode") OR matchesValue(metric.key, "sql-server.always-on.ar.isLocal") OR matchesValue(metric.key, "sql-server.always-on.ar.operationalState") OR matchesValue(metric.key, "sql-server.always-on.ar.recoveryHealth") OR matchesValue(metric.key, "sql-server.always-on.ar.role") OR matchesValue(metric.key, "sql-server.always-on.ar.synchronizationHealth") OR matchesValue(metric.key, "sql-server.always-on.ar.connectedState") ) AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(availability.group.id) AND isNotNull(availability.replica.id)
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_availability_replica_mssql"
          node_type          = "DB_AVAILABILITY_REPLICA_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "db.system"
              referenced_field_name = "db.system"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.ip"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.hostname"
              referenced_field_name = "device.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.port"
              referenced_field_name = "device.port"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details"
              referenced_field_name = "device"
            }
            smartscape_field_extraction_entry {
              field_name            = "availability_mode"
              referenced_field_name = "availability.replica.availability_mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "availability.replica.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.instance.name"
              referenced_field_name = "availability.replica.instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "endpoint_metadata"
              referenced_field_name = "endpoint_metadata"
            }
            smartscape_field_extraction_entry {
              field_name            = "failover_mode"
              referenced_field_name = "availability.replica.availability.replica.failover_mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "is_local"
              referenced_field_name = "availability.replica.is_local"
            }
            smartscape_field_extraction_entry {
              field_name            = "role"
              referenced_field_name = "availability.replica.role"
            }
            smartscape_field_extraction_entry {
              field_name            = "operational_state"
              referenced_field_name = "availability.replica.operational_state"
            }
            smartscape_field_extraction_entry {
              field_name            = "recovery_health"
              referenced_field_name = "availability.replica.recovery_health"
            }
            smartscape_field_extraction_entry {
              field_name            = "synchronization_health"
              referenced_field_name = "availability.replica.synchronization_health"
            }
            smartscape_field_extraction_entry {
              field_name            = "connected_state"
              referenced_field_name = "availability.replica.connected_state"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.sql:sql_server_availability_replica"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
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
              id_component          = "availability_group_id"
              referenced_field_name = "availability.group.id"
            }
            id_component {
              id_component          = "availability_replica_id"
              referenced_field_name = "availability.replica.id"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "availability.replica.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "is_part_of"
              target_id_field_name = "dt.smartscape.db_availability_group_mssql"
              target_type          = "DB_AVAILABILITY_GROUP_MSSQL"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "same_as"
              target_id_field_name = "dt.smartscape.db_availability_group_mssql"
              target_type          = "DB_AVAILABILITY_GROUP_MSSQL"
            }
          }
        }
      }
      processor {
        description = "Attach metrics to DB_AVAILABILITY_REPLICA_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_AVAILABILITY_REPLICA_MSSQL_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"sql-server*\") AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(availability.group.id) AND isNotNull(availability.replica.id)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.db_availability_replica_mssql"
          node_type          = "DB_AVAILABILITY_REPLICA_MSSQL"
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
              id_component          = "availability_group_id"
              referenced_field_name = "availability.group.id"
            }
            id_component {
              id_component          = "availability_replica_id"
              referenced_field_name = "availability.replica.id"
            }
          }
        }
      }
      processor {
        description = "Create DB_AVAILABILITY_DATABASE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_AVAILABILITY_DATABASE_MSSQL_metrics_extraction"
        matcher     = "matchesValue(metric.key, \"sql-server.always-on.db.state\") AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(availability.group.id) AND isNotNull(availability.replica.id) AND isNotNull(availability.database.id)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.db_availability_database_mssql"
          node_type          = "DB_AVAILABILITY_DATABASE_MSSQL"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "db.system"
              referenced_field_name = "db.system"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.ip"
              referenced_field_name = "device.address"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.hostname"
              referenced_field_name = "device.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details.port"
              referenced_field_name = "device.port"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.connection_details"
              referenced_field_name = "device"
            }
            smartscape_field_extraction_entry {
              field_name            = "state"
              referenced_field_name = "availability.database.state"
            }
            smartscape_field_extraction_entry {
              field_name            = "synchronization_state"
              referenced_field_name = "availability.database.synchronization_state"
            }
            smartscape_field_extraction_entry {
              field_name            = "synchronization_health"
              referenced_field_name = "availability.database.synchronization_health"
            }
            smartscape_field_extraction_entry {
              field_name            = "host.name"
              referenced_field_name = "availability.replica.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.instance.name"
              referenced_field_name = "availability.replica.instance"
            }
            smartscape_field_extraction_entry {
              field_name            = "db.database.name"
              referenced_field_name = "availability.database.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "endpoint_metadata"
              referenced_field_name = "endpoint_metadata"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.sql:sql_server_availability_database"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
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
              id_component          = "availability_group_id"
              referenced_field_name = "availability.group.id"
            }
            id_component {
              id_component          = "availability_replica_id"
              referenced_field_name = "availability.replica.id"
            }
            id_component {
              id_component          = "availability_database_id"
              referenced_field_name = "availability.database.id"
            }
          }
          node_name {
            type = "field"
            field {
              source_field_name = "availability.database.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.db_availability_replica_mssql"
              target_type          = "DB_AVAILABILITY_REPLICA_MSSQL"
            }
          }
        }
      }
      processor {
        description = "Attach metrics to DB_AVAILABILITY_DATABASE_MSSQL node"
        type        = "smartscapeNode"
        enabled     = true
        id          = "DB_AVAILABILITY_DATABASE_MSSQL_metrics_enrichment"
        matcher     = "matchesValue(metric.key, \"sql-server*\") AND isNotNull(device.name) AND isNotNull(device.port) AND isNotNull(availability.group.id) AND isNotNull(availability.replica.id) AND isNotNull(availability.database.id)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.db_availability_database_mssql"
          node_type          = "DB_AVAILABILITY_DATABASE_MSSQL"
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
              id_component          = "availability_group_id"
              referenced_field_name = "availability.group.id"
            }
            id_component {
              id_component          = "availability_replica_id"
              referenced_field_name = "availability.replica.id"
            }
            id_component {
              id_component          = "availability_database_id"
              referenced_field_name = "availability.database.id"
            }
          }
        }
      }
    }
  }
}
