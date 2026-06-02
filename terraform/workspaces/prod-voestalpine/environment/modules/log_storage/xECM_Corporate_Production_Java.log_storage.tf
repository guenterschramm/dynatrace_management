resource "dynatrace_log_storage" "xECM_Corporate_Production_Java" {
  name            = "xECM Corporate Production (Java)"
  enabled         = true
  insert_after    = "vu9U3hXa3q0AAAABACpidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLXN0b3JhZ2Utc2V0dGluZ3MACkhPU1RfR1JPVVAAEDU1NEJBNzUyQkQwMUY4RTMAJGU1OTA3ZTkzLWJiOWQtMzdhZi05M2MzLTEwMTQyMjE5MmYxOb7vVN4V2t6t"
  scope           = "HOST_GROUP-554BA752BD01F8E3"
  send_to_storage = true
  matchers {
    matcher {
      attribute = "log.source"
      operator  = "MATCHES"
      values    = [ "D:\\Opentext\\OTCS\\logs\\timing_logs\\timings_#_#.csv", "D:\\Opentext\\OTCS\\logs\\searchfederator_#asecmbe2p1X2099X291305848X#.log", "D:\\Opentext\\OTCS\\logs\\searchengine_#asecmbe2p1X2099X291305848X#.log", "D:\\Opentext\\OTCS\\logs\\indexengine_#asecmbe2p1X2099X291305848X#.log", "D:\\Opentext\\OTCS\\logs\\ecmlink-spi.log", "D:\\Opentext\\OTCS\\logs\\agents_run#.html", "D:\\Opentext\\OTCS\\logs\\notify_run#.html", "D:\\Opentext\\OTCS\\logs\\receiver_logs\\sockserv.receiver#.out" ]
    }
    matcher {
      attribute = "process.technology"
      operator  = "MATCHES"
      values    = [ "Java" ]
    }
  }
}
