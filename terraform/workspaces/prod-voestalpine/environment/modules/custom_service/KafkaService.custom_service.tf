resource "dynatrace_custom_service" "KafkaService" {
  name                = "KafkaService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.kafka.DefaultKafkaService"
      match = "EQUALS"
    }
    method {
      name       = "publish"
      arguments  = [ "java.lang.Object", "java.lang.String", "java.lang.String", "java.time.Instant" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "subscribe"
      returns    = "reactor.core.Disposable"
      visibility = "PUBLIC"
    }
  }
}
