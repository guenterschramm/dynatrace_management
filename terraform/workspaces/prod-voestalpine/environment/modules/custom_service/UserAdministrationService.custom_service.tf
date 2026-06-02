resource "dynatrace_custom_service" "UserAdministrationService" {
  name                = "UserAdministrationService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.user.administration.DefaultUserAdministrationService"
      match = "EQUALS"
    }
    method {
      name       = "filterPartnersUserHasAccessTo"
      arguments  = [ "java.lang.String", "java.util.List", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getAllUsers"
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserDetails"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUsers"
      arguments  = [ "java.util.List", "boolean" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "lockUsers"
      arguments  = [ "java.util.List" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "unlockUsers"
      arguments  = [ "java.util.List" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateGeneralUserData"
      arguments  = [ "java.lang.String", "com.voestalpine.dki.user.administration.domain.UpdateGeneralUserDataDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateServiceUserData"
      arguments  = [ "java.lang.String", "com.voestalpine.dki.core.domain.DKIService", "com.voestalpine.dki.user.administration.domain.UpdateServiceDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
