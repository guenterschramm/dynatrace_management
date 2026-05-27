resource "dynatrace_generic_types" "rabbitmq_queue" {
  name         = "rabbitmq:queue"
  enabled      = true
  created_by   = "com.dynatrace.rabbitmq 2.1.7"
  display_name = "Queue"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJDcxZTQzZDBlLTM3ODgtNTEwNC05ZTg5LTYwMGJhMTVkOGFmYr7vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "queue"
      id_pattern            = "rabbitmq_queue_{cluster}_{node}_{queue}"
      instance_name_pattern = "{queue}"
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
          display_name = "Virtual Host"
          key          = "vhost"
          pattern      = "{vhost}"
        }
        attribute {
          display_name = "Durable"
          key          = "durable"
          pattern      = "{durable}"
        }
        attribute {
          display_name = "Policy"
          key          = "policy"
          pattern      = "{policy}"
        }
        attribute {
          display_name = "State"
          key          = "queue_state"
          pattern      = "{state}"
        }
        attribute {
          display_name = "Type"
          key          = "type"
          pattern      = "{type}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      sources {
        source {
          condition   = "$prefix(rabbitmq.queue.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
