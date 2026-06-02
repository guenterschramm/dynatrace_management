resource "dynatrace_custom_service" "UserRegistrationService" {
  name                = "UserRegistrationService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.registration.DefaultUserRegistrationService"
      match = "EQUALS"
    }
    method {
      name       = "registerUser"
      arguments  = [ "com.voestalpine.dki.registration.domain.UserRegistration" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
