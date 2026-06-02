resource "dynatrace_custom_service" "OrderService" {
  name                = "OrderService"
  enabled             = false
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled     = true
    annotations = [ "org.springframework.stereotype.Controller" ]
    class {
      name  = "com.voestalpine"
      match = "STARTS_WITH"
    }
    method {
      name       = "getOrder"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrder" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "computeOrderPositionStatusReport"
      arguments  = [ "com.voestalpine.dki.order.OrderService$ComputeOrderPositionStatusReport" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "computeOrderStatusVersionEntries"
      arguments  = [ "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "createOrderStatusVersion"
      arguments  = [ "com.voestalpine.dki.order.OrderService$CreateOrderStatusVersion" ]
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
      name       = "findOrdersAndPositionsByOrderPositionIds"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrdersAndPositions" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getActiveOrdersDataSetContext"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetActiveOrdersDataSetContext" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getMaterialAnalysis"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetMaterialAnalysis" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getMaterialAnalysisByPartner"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetMaterialAnalysisByPartner" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderAndPosition"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderPosition" ]
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
      name       = "getOrderPositionStatuses"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderPositionStatuses" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderPositions"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderPositions" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderPositionsWithStatus"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderPositions" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderStatus"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderStatus" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getOrderStatusVersion"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetOrderStatusVersion" ]
      returns    = "reactor.core.publisher.Mono"
      visibility = "PUBLIC"
    }
    method {
      name       = "getRelatedPartners"
      arguments  = [ "reactor.core.publisher.Flux" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufAuftraege"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetVersandAbrufAuftraege" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufGesamtUebersichten"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetVersandAbrufGesamtUebersichten" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufMaterials"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetVersandAbrufMaterials" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "getVersandAbrufUebersichten"
      arguments  = [ "com.voestalpine.dki.order.OrderService$GetVersandAbrufUebersichten" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
  }
}
