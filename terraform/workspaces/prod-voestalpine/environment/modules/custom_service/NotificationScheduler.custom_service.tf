resource "dynatrace_custom_service" "NotificationScheduler" {
  name                = "NotificationScheduler"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.user.notification.NotificationScheduler"
      match = "EQUALS"
    }
    method {
      name       = "reprocessFailedNotifications"
      modifiers  = [ "FINAL" ]
      returns    = "void"
      visibility = "PUBLIC"
    }
    method {
      name       = "sendDailyUpdateMail"
      modifiers  = [ "FINAL" ]
      returns    = "void"
      visibility = "PUBLIC"
    }
  }
}
