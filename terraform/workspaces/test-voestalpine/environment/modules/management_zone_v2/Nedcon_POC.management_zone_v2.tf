resource "dynatrace_management_zone_v2" "Nedcon_POC" {
  name = "Nedcon_POC"
  rules {
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("sql:sql_server_host"), dt.security_context("Nedcon_POC")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("sql:sql_server_instance"), dt.security_context("Nedcon_POC")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("sql:sql_server_database"),dt.security_context("Nedcon_POC")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = false
      entity_selector =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_cisco_network_interface"),tag("UCID:nedcon_us_2161")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = false
      entity_selector =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_cisco_device"),tag("UCID:nedcon_us_2161")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_device_interface"),tag("UCID:nedcon_us_2161")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("snmp:com_dynatrace_extension_snmp_generic_device"), tag("UCID:nedcon_us_2161")
      EOT
    }
    rule {
      type            = "SELECTOR"
      enabled         = true
      entity_selector =<<-EOT
        type("network:device"), tag("UCID:nedcon_us_2161")
      EOT
    }
    rule {
      type    = "ME"
      enabled = true
      attribute_rule {
        entity_type               = "PROCESS_GROUP"
        pg_to_host_propagation    = true
        pg_to_service_propagation = true
        attribute_conditions {
          condition {
            case_sensitive = false
            key            = "HOST_GROUP_NAME"
            operator       = "EQUALS"
            string_value   = "nedcon"
          }
        }
      }
    }
  }
}
