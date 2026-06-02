resource "dynatrace_synthetic_location" "DC_Linz" {
  name                                  = "DC Linz"
  # auto_update_chromium                = true
  # availability_location_outage        = false
  # availability_node_outage            = false
  availability_notifications_enabled    = true
  city                                  = "Linz"
  country_code                          = "AT"
  deployment_type                       = "STANDARD"
  fips_mode                             = "DISABLED"
  latitude                              = 48.3074
  location_node_outage_delay_in_minutes = 3
  longitude                             = 14.285
  # nam_execution_supported             = false
  node_size                             = "UNSUPPORTED"
  nodes                                 = [ "932778070" ]
  region_code                           = "04"
  # use_new_kubernetes_version          = false
}
