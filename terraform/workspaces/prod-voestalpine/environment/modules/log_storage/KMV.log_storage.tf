resource "dynatrace_log_storage" "KMV" {
  name            = "KMV"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MABEhPU1QAEDgxNDIzNTUxMzY1QjkxRDAAJDljNTgxZmFhLTgxODgtM2ExYi1iYWIwLWM5OGMwZjg1YjczML7vVN4V2t6t"
  scope           = "HOST_GROUP-0A0A9B6358002D55"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/usr/local/tomcat/instances/KMV/logs/uid.log", "/usr/local/tomcat/instances/KMV/logs/localhost_access_log.#-#-#.txt", "/usr/local/tomcat/instances/KMV/logs/stderr.log", "/usr/local/tomcat/instances/KMV/logs/stdout.log" ]
    }
  }
}
