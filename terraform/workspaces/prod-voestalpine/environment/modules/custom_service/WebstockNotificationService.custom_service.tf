resource "dynatrace_custom_service" "WebstockNotificationService" {
  name                = "WebstockNotificationService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.dvk.webstock.receiver.DefaultWebstockNotificationService"
      match = "EQUALS"
    }
    method {
      name       = "processWebstockOrderNotification"
      arguments  = [ "com.voestalpine.dki.dvk.webstock.notification.domain.WebstockOrderNotification" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
