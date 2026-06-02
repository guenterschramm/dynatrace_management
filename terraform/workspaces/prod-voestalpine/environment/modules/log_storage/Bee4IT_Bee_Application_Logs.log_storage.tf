resource "dynatrace_log_storage" "Bee4IT_Bee_Application_Logs" {
  name            = "Bee4IT (Bee Application Logs)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEMzNDVDQTVEMEQ3NjA0MjQAJGRkMGFlMTA4LTY4ZGQtMzdlOC1hNmY1LThiODkyNzk5ODIyNb7vVN4V2t6t"
  scope           = "HOST_GROUP-F8254B0A4393DA8D"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\Clausmark\\Bee4IT\\server\\log\\#-#-#_action.log", "D:\\Clausmark\\Bee4IT\\server\\log\\#-#-#_fail.log", "D:\\Clausmark\\Bee4IT\\web\\api\\logs\\api-stdout_#_#.log", "D:\\Clausmark\\Bee4IT\\web\\auth\\logs\\auth-stdout_#_#.log", "D:\\Clausmark\\Bee4IT\\web\\rm\\logs\\rm-stdout_#_#.log", "IIS Event Logs", "web", "D:\\Clausmark\\Bee4IT\\web_legacy\\auth\\logs\\auth-stdout_#_#.log", "D:\\Clausmark\\Bee4IT\\web_legacy\\api\\logs\\api-stdout_#_#.log", "D:\\Clausmark\\Bee4IT\\server\\bin\\message.log", "D:\\Clausmark\\Bee4IT\\server\\log\\#-#-#_all.log", "D:\\Clausmark\\Bee4IT\\server\\log\\#-#-#_statistics.log" ]
    }
  }
}
