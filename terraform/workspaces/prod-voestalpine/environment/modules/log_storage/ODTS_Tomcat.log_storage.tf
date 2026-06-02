resource "dynatrace_log_storage" "ODTS_Tomcat" {
  name            = "ODTS Tomcat"
  enabled         = false
  insert_after    = ""
  scope           = "HOST-18293E2C2566BC1D"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\3rdParty\\Tomcat\\logs\\catalina.#-#-#.log", "D:\\3rdParty\\Tomcat\\logs\\directory-access.log", "D:\\3rdParty\\Tomcat\\logs\\directory-audit.log", "D:\\3rdParty\\Tomcat\\logs\\directory-provenance.log", "D:\\3rdParty\\Tomcat\\logs\\localhost_access_log.#-#-#.txt", "D:\\3rdParty\\Tomcat\\logs\\otds.log", "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stderr.#-#-#.log", "D:\\3rdParty\\Tomcat\\logs\\tomcat#-stdout.#-#-#.log" ]
    }
  }
}
