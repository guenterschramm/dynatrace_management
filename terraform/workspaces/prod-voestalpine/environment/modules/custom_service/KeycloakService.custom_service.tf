resource "dynatrace_custom_service" "KeycloakService" {
  name                = "KeycloakService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.keycloak.DefaultKeycloakService"
      match = "EQUALS"
    }
    method {
      name       = "addRolesToUser"
      arguments  = [ "java.lang.String", "java.util.List" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getAllRoles"
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getAllUsers"
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUser"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserGroups"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserRoles"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUsers"
      arguments  = [ "java.util.List" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "removeRolesFromUser"
      arguments  = [ "java.lang.String", "java.util.List" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateUserAccount"
      arguments  = [ "java.lang.String", "com.voestalpine.keycloak.domain.UpdateKeycloakUserDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateUserEnabled"
      arguments  = [ "java.lang.String", "boolean" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
