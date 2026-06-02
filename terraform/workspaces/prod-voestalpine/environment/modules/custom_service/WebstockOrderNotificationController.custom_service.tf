resource "dynatrace_custom_service" "WebstockOrderNotificationController" {
  name                = "WebstockOrderNotificationController"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.dvk.webstock.notification.controller.WebstockOrderNotificationController"
      match = "EQUALS"
    }
    method {
      name       = "notifyCustomerAboutNewOrder"
      arguments  = [ "com.voestalpine.dki.dvk.webstock.notification.domain.WebstockOrderNotification" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "notifyCustomerSupportAboutNewOrder"
      arguments  = [ "com.voestalpine.dki.dvk.webstock.notification.domain.WebstockOrderNotification" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
