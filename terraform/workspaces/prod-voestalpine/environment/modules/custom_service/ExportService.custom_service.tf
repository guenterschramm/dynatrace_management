resource "dynatrace_custom_service" "ExportService" {
  name                = "ExportService"
  enabled             = true
  # queue_entry_point = false
  technology          = "java"
  rule {
    enabled = true
    class {
      name  = "com.voestalpine.excel.export.ExportService"
      match = "EQUALS"
    }
    method {
      name       = "createCSVExport"
      arguments  = [ "java.lang.String", "java.util.List", "java.util.List", "com.voestalpine.dki.core.domain.Language" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "createConfigurableExport"
      arguments  = [ "com.voestalpine.excel.export.domain.ConfigurableExportReport", "com.voestalpine.dki.core.domain.Language" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "createConfigurableOrderStatusVersionExport"
      arguments  = [ "com.voestalpine.excel.export.domain.ConfigurableOrderStatusVersionExportReport", "com.voestalpine.dki.core.domain.Language" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
    method {
      name       = "createExcelExport"
      arguments  = [ "java.lang.String", "java.util.List", "java.util.List", "com.voestalpine.dki.core.domain.Language" ]
      modifiers  = [ "ABSTRACT" ]
      returns    = "reactor.core.publisher.Flux"
      visibility = "PUBLIC"
    }
  }
}
