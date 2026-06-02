resource "dynatrace_custom_service" "VersandAbrufNotificationPublishingService" {
  name                = "VersandAbrufNotificationPublishingService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.order.controller.VersandAbrufNotificationPublishingService"
      match = "EQUALS"
    }
    method {
      name       = "publishVersandAbrufMaterialNotification"
      arguments  = [ "com.voestalpine.dki.user.notification.domain.VersandAbrufMaterialNotification" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "publishVersandAbrufOrderNotification"
      arguments  = [ "com.voestalpine.dki.user.notification.domain.VersandAbrufOrderNotification" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
