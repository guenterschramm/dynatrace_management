resource "dynatrace_log_storage" "xECM_Steel_Client" {
  name            = "xECM Steel Client"
  enabled         = false
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEMzNDVDQTVEMEQ3NjA0MjQAJDQ5YTFiNWM1LWUzMmEtMzU1OS1hMTg2LWYyNGM4NWE1YWNjML7vVN4V2t6t"
  scope           = "HOST_GROUP-C345CA5D0D760424"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "C:\\Users\\holzinw\\AppData\\Local\\OpenText\\OTEdit\\logs\\OpenText Office Editor #.#.#.log", "C:\\Users\\holzinw\\AppData\\Local\\OpenText\\UC_SYNC\\uc_ucsync.log", "C:\\Users\\holzinw\\AppData\\Local\\OpenText\\UC_SYNC\\uc_ucscore.log" ]
    }
  }
}
