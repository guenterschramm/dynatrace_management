resource "dynatrace_metric_metadata" "CPU_Count" {
  description        = "Detected CPU Count"
  display_name       = "CPU Count"
  metric_id          = "metric-sql-server.host.cpus"
  source_entity_type = "sql:sql_server_host"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Detected number of CPUs"
      key          = "cpu_count"
    }
    dimension {
      display_name = "Detected physical memory"
      key          = "physical_memory"
    }
    dimension {
      display_name = "Detected hyperthreading ratio"
      key          = "hyperthread_ratio"
    }
    dimension {
      display_name = "Detected virtual machine type"
      key          = "virtual_machine_type"
    }
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
    value_type = "unknown"
  }
}
