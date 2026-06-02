resource "dynatrace_custom_service" "WebstockOrderNotificationEmailController" {
  name                = "WebstockOrderNotificationEmailController"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.dvk.webstock.notification.controller.WebstockOrderNotificationEmailController"
      match = "EQUALS"
    }
    method {
      name       = "renderWebstockOrderCustomerNotificationEmail"
      arguments  = [ "com.voestalpine.dki.user.notification.rendering.webstock.domain.WebstockOrderNotificationTemplate" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "renderWebstockOrderCustomerSupportNotificationEmail"
      arguments  = [ "com.voestalpine.dki.user.notification.rendering.webstock.domain.WebstockOrderNotificationTemplate" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "sendWebstockOrderNotificationEmail"
      arguments  = [ "com.voestalpine.dki.user.notification.rendering.webstock.domain.UserMailInformation", "java.lang.String", "com.voestalpine.dki.dvk.webstock.notification.mail.WebstockMailConfiguration$TemplatesConfiguration$TemplateConfiguration", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
