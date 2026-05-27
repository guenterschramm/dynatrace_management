resource "dynatrace_log_storage" "RabbitMQ" {
  name            = "RabbitMQ"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDJGQTBDQjQwNUIzNjBEMUMAJDQ5MDdhM2MwLWVlMWItM2ExNS05NWYwLTUyZDg2MWYxMzhhY77vVN4V2t6t"
  scope           = "HOST_GROUP-2FA0CB405B360D1C"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "RabbitMQ" ]
    }
  }
}
