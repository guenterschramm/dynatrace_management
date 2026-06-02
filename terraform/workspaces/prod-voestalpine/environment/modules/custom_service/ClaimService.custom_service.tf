resource "dynatrace_custom_service" "ClaimService" {
  name                = "ClaimService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.claim.ClaimClient"
      match = "EQUALS"
    }
    method {
      name       = "getClaimsUpdatedAfter"
      arguments  = [ "com.voestalpine.dki.claim.ClaimService$GetClaimsUpdatedAfter" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
  }
}
