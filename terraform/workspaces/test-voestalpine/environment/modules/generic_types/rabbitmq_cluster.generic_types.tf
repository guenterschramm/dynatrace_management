resource "dynatrace_generic_types" "rabbitmq_cluster" {
  name         = "rabbitmq:cluster"
  enabled      = true
  created_by   = "com.dynatrace.rabbitmq 2.1.7"
  display_name = "Cluster"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDAzMGFkNGQyLTFlZDgtMzM0Yy1iM2QzLTkyYTA4MWVmNDJiZb7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "cluster"
      id_pattern            = "rabbitmq_cluster_{cluster}"
      instance_name_pattern = "{cluster}"
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
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(rabbitmq.cluster.)"
          source_type = "Metrics"
        }
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
