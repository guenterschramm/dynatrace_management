resource "dynatrace_custom_service" "PartnerService" {
  name                = "PartnerService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.partner.DefaultPartnerService"
      match = "EQUALS"
    }
    method {
      name       = "deleteMultipleOrderStatusSettings"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$DeleteMultipleOrderStatusSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "deleteOrderStatusSettings"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$DeleteOrderStatusSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getAllPartnerWarehouses"
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getEmployee"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetEmployee" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartner"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetPartner" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartner"
      arguments  = [ "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartnerOrderStatusSettings"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetPartnerOrderStatusSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartnerSupportEmployees"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetPartnerSupportEmployees" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartnerSupportEmployeesForVkorg"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetPartnerSupportEmployeesForVkorg" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartnerTransportTypeDuration"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetPartnerTransportTypeDuration" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartners"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetPartners" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getPartners"
      arguments  = [ "java.util.List" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRelatedPartnersByRoles"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetRelatedPartner" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRelatedPartnersByRoles"
      arguments  = [ "java.lang.String", "java.lang.String", "java.util.List" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getSupportEmployees"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$SupportEmployeesRequestDTO" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getSupportEmployees"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$GetSupportEmployees" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "processEmployee"
      arguments  = [ "com.voestalpine.legacybridge.domain.Employee" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processPartner"
      arguments  = [ "com.voestalpine.legacybridge.domain.Partner" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "processPartnerTransportTypeDurations"
      arguments  = [ "com.voestalpine.legacybridge.domain.PartnerTransportTypeDurations" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateMultipleOrderStatusSettings"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$MultipleOrderStatusSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updateOrderStatusSettings"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$OrderStatusSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "updatePartnerOrderStatusSettings"
      arguments  = [ "com.voestalpine.dki.partner.PartnerService$UpdatePartnerOrderStatusDefaultSettings" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
  }
}
