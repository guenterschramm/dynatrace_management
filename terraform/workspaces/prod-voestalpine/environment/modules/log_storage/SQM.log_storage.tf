resource "dynatrace_log_storage" "SQM" {
  name            = "SQM"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDBBMEE5QjYzNTgwMDJENTUAJGE2Mzg5ZDgyLTYwMTEtMzYzMS1hOGMyLWFkMzMzNWZkOGNkMr7vVN4V2t6t"
  scope           = "HOST_GROUP-0A0A9B6358002D55"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "/usr/local/tomcat/instances/SQMQD/logs/*" ]
    }
  }
}
