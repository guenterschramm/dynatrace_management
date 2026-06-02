resource "dynatrace_custom_service" "KafkaReceiver" {
  name                   = "KafkaReceiver"
  enabled                = true
  queue_entry_point      = true
  queue_entry_point_type = "KAFKA"
  technology             = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.kafka.controller.KafkaReceiverController"
      match = "EQUALS"
    }
    method {
      name       = "audit"
      arguments  = [ "com.voestalpine.kafka.domain.KSubscription", "org.apache.kafka.clients.consumer.ConsumerRecord", "java.lang.Object" ]
      modifiers  = [ "FINAL" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PRIVATE"
    }
    method {
      name       = "retrieveAndAuditPayload"
      arguments  = [ "com.voestalpine.kafka.domain.KSubscription", "org.apache.kafka.clients.consumer.ConsumerRecord" ]
      modifiers  = [ "FINAL" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PRIVATE"
    }
    method {
      name       = "retrievePayload"
      arguments  = [ "com.voestalpine.kafka.domain.KSubscription", "org.apache.kafka.clients.consumer.ConsumerRecord" ]
      modifiers  = [ "FINAL" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PRIVATE"
    }
  }
}
