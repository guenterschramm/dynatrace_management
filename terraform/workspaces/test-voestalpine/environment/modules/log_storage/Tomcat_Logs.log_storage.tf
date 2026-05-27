resource "dynatrace_log_storage" "Tomcat_Logs" {
  name            = "Tomcat Logs"
  enabled         = true
  insert_after    = ""
  scope           = "HOST-4B30C806BED03484"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Apache Tomcat" ]
    }
  }
}
