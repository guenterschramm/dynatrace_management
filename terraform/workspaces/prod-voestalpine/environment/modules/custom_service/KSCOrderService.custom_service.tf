resource "dynatrace_custom_service" "KSCOrderService" {
  name                = "KSCOrderService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.dki.ksc.order.DefaultKSCOrderService"
      match = "EQUALS"
    }
    method {
      name       = "computeOrderStatusVersionEntries"
      arguments  = [ "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "createOrderStatusVersion"
      arguments  = [ "java.lang.String", "java.lang.String", "com.voestalpine.dki.order.domain.CreateOrderStatusVersionDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "createVersandAbrufAuftraege"
      arguments  = [ "com.voestalpine.dki.order.domain.CreateVersandAbrufAuftraegeDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "createVersandAbrufMaterials"
      arguments  = [ "com.voestalpine.dki.order.domain.CreateVersandAbrufMaterialsDto" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "findOrderAndPosition"
      arguments  = [ "com.voestalpine.dki.order.OrderService$FindOrderPosition" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "findOrderPosition"
      arguments  = [ "com.voestalpine.dki.order.OrderService$FindOrderPosition" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getConfigurableOrderStatusVersionAsExcel"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "int", "com.voestalpine.dki.core.domain.Language", "com.voestalpine.dki.ksc.order.domain.ConfigurableOrderStatusVersionAsExcelRequest" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrder"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrder" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderAndPosition"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderPosition" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderConfirmationUrl"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderPosition"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderPosition" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderStatus"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderStatusVersion"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "int" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderStatusVersionAsExcelFilename"
      arguments  = [ "com.voestalpine.dki.core.domain.Language" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderSupportEmployees"
      arguments  = [ "java.lang.String", "java.lang.String", "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufAuftraege"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufGesamtUebersichten"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufMaterials"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufUebersichten"
      arguments  = [ "java.lang.String", "java.lang.String" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
  }
}
