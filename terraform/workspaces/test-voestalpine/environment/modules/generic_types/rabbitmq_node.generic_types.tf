resource "dynatrace_generic_types" "rabbitmq_node" {
  name         = "rabbitmq:node"
  enabled      = true
  created_by   = "com.dynatrace.rabbitmq 3.0.0"
  display_name = "Node"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDA2M2FiZDdmLTk2ZmMtNTE5NS1iZjYyLTUyOTUyMTcxZDYyYr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "server"
      id_pattern            = "rabbitmq_node_{cluster}_{node}"
      instance_name_pattern = "{node}"
      attributes {
        attribute {
          display_name = "Cluster"
          key          = "cluster"
          pattern      = "{cluster}"
        }
        attribute {
          display_name = "Node"
          key          = "node"
          pattern      = "{node}"
        }
        attribute {
          display_name = "RabbitMQ Version"
          key          = "rabbitmq_version"
          pattern      = "{rabbitmq_version}"
        }
        attribute {
          display_name = "Erlang Version"
          key          = "erlang_version"
          pattern      = "{erlang_version}"
        }
        attribute {
          display_name = "DNS Names"
          key          = "dt.dns_names"
          pattern      = "{dt.dns_names}"
        }
        attribute {
          display_name = "IP Addresses"
          key          = "dt.ip_addresses"
          pattern      = "{dt.ip_addresses}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "node"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "cluster"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          condition   = "$prefix(rabbitmq.queue.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(rabbitmq.vhost.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(rabbitmq.node.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
