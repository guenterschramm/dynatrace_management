resource "dynatrace_synthetic_location" "Nedcon_US" {
  name                                  = "Nedcon_US_1013"
  auto_update_chromium                  = false
  # availability_location_outage        = false
  # availability_node_outage            = false
  availability_notifications_enabled    = true
  city                                  = "Shelbyville"
  country_code                          = "US"
  deployment_type                       = "STANDARD"
  fips_mode                             = "DISABLED"
  latitude                              = 35.4825
  location_node_outage_delay_in_minutes = 3
  longitude                             = -86.4629
  # nam_execution_supported             = false
  node_size                             = "UNSUPPORTED"
  nodes                                 = [ "2115005022" ]
  region_code                           = "TN"
  # use_new_kubernetes_version          = false
}
