resource "dynatrace_log_storage" "CMAS_External" {
  name            = "CMAS External"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDBBMEE5QjYzNTgwMDJENTUAJDU5NzdiNWI1LWJmOTAtM2M0My04MGI5LTkzMjdjZWYwY2Q4Mr7vVN4V2t6t"
  scope           = "HOST_GROUP-0A0A9B6358002D55"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/usr/local/tomcat/instances/CMAS_Access_External/logs/activatemas.log", "/usr/local/tomcat/instances/CMAS_Access_External/logs/localhost_access_log.#-#-#.txt", "/usr/local/tomcat/instances/CMAS_Access_External/logs/stderr.log", "/usr/local/tomcat/instances/CMAS_Access_External/logs/stdout.log" ]
    }
  }
}
