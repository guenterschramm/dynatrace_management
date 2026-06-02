resource "dynatrace_log_storage" "xECM_Steel_Production_Java" {
  name            = "xECM Steel Production (Java)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEEMzNDVDQTVEMEQ3NjA0MjQAJGZkMTNmNjI1LWRkODMtM2QxOC04NWJlLWFiYzUyMTllZjFmYb7vVN4V2t6t"
  scope           = "HOST_GROUP-C345CA5D0D760424"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\Opentext\\OTCS\\logs\\timing_logs\\timings_#_#.csv", "D:\\Opentext\\OTCS\\logs\\searchengine_#asecmbe1p1X2099X1028033948X#.log", "D:\\Opentext\\OTCS\\logs\\searchfederator_#asecmbe1p1X2099X1028033948X#.log", "D:\\Opentext\\OTCS\\logs\\indexengine_#asecmbe1p1X2099X1028033948X#.log", "D:\\Opentext\\OTCS\\logs\\agents_run#.html", "D:\\Opentext\\OTCS\\logs\\notify_run#.html", "D:\\Opentext\\OTCS\\logs\\receiver_logs\\sockserv.receiver#.out" ]
    }
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Java" ]
    }
  }
}
