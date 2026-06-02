resource "dynatrace_custom_service" "RolesService" {
  name                = "RolesService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.user.role.DefaultRolesService"
      match = "EQUALS"
    }
    method {
      name       = "getAllUserFeatures"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getAssignedUserFeatures"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getDefaultFeatures"
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRoleDefaultFeatures"
      arguments  = [ "com.voestalpine.dki.core.domain.DKIRole" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserAssignableRoles"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserGroups"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getUserRoles"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "saveRoleDefaultFeatures"
      arguments  = [ "com.voestalpine.dki.user.role.domain.RoleDefaultFeaturesDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "setServiceFeaturesForUser"
      arguments  = [ "java.lang.String", "com.voestalpine.dki.core.domain.DKIService", "java.util.List" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "setServiceRoleForUser"
      arguments  = [ "java.lang.String", "com.voestalpine.dki.core.domain.DKIService", "com.voestalpine.dki.core.domain.DKIRole" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
