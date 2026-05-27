resource "dynatrace_log_storage" "PAM_Logs" {
  name            = "PAM Logs"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDJGQTBDQjQwNUIzNjBEMUMAJDhmZWVlM2Q1LWVkZWYtMzY3NS05OTQ5LTRiYzVmNzg1MjQ5Mb7vVN4V2t6t"
  scope           = "HOST_GROUP-A033A170DE47B287"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "C:\\Program Files (x86)\\CyberArk\\ApplicationPasswordProvider\\Logs\\APPConsole.log", "C:\\Program Files (x86)\\CyberArk\\PSM\\HealthCheck\\PSMWebService.log", "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\PSMConsole.log", "C:\\Program Files (x86)\\CyberArk\\PSM\\Logs\\PSMTrace.log", "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\CACPMScanner.log", "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\Casos.Activity.log", "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\Casos.Debug.log", "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\Casos.Error.log", "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\PMConsole.log", "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\PMTrace.log", "C:\\Program Files (x86)\\CyberArk\\Password Manager\\Logs\\pm.log" ]
    }
  }
}
