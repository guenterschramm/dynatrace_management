resource "dynatrace_custom_service" "NotificationService" {
  name                = "NotificationService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.user.notification.DefaultNotificationService"
      match = "EQUALS"
    }
    method {
      name       = "notifyNewDocumentsAvailable"
      arguments  = [ "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "notifyNewUserRegistration"
      arguments  = [ "com.voestalpine.dki.user.registration.domain.UserRegistration" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processDispatchMaterialNotification"
      arguments  = [ "com.voestalpine.dki.user.notification.dispatch.domain.DispatchMaterialNotification" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processDispatchOrderNotification"
      arguments  = [ "com.voestalpine.dki.user.notification.dispatch.domain.DispatchOrderNotification" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processVersandAbrufMaterialNotification"
      arguments  = [ "com.voestalpine.dki.user.notification.domain.VersandAbrufMaterialNotification" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processVersandAbrufOrderNotification"
      arguments  = [ "com.voestalpine.dki.user.notification.domain.VersandAbrufOrderNotification" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
