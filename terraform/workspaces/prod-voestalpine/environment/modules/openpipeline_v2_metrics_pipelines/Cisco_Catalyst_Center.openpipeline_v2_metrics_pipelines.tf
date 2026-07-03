resource "dynatrace_openpipeline_v2_metrics_pipelines" "Cisco_Catalyst_Center" {
  custom_id    = "extension:cisco-cc"
  display_name = "Cisco Catalyst Center"
  metadata_list {
    metadata {
      entry_key   = "extension_name"
      entry_value = "com.dynatrace.extension.cisco-cc"
    }
    metadata {
      entry_key   = "extension_version"
      entry_value = "3.0.3"
    }
  }
  processing {
    processors {
      processor {
        description = "Prepare mac array for EXT_NETWORK_DEVICE node extraction"
        type        = "dql"
        enabled     = true
        id          = "device_metrics_prepare_mac_array"
        matcher     = "isNotNull(chassis.mac)"
        dql {
          script = "fieldsAdd mac=array(chassis.mac)"
        }
      }
      processor {
        description = "Prepare mac array for EXT_NETWORK_INTERFACE from interface MAC"
        type        = "dql"
        enabled     = true
        id          = "interface_metrics_prepare_mac_array"
        matcher     = "isNotNull(mac.address)"
        dql {
          script = "fieldsAdd mac=if(isNotNull(mac.address), array(mac.address))"
        }
      }
    }
  }
  smartscape_edge_extraction {
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Stamp CISCO_CC_CENTER ID on cisco.cc and com.dynatrace.extension metrics with center dim"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_cisco_cc_center_metric_stamp"
        matcher     = "isNotNull(center) AND matchesValue(dt.metrics.source, \"*cisco-cc*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.cisco_cc_center"
          node_type          = "CISCO_CC_CENTER"
          id_components {
            id_component {
              id_component          = "cisco_cc.center"
              referenced_field_name = "center"
            }
          }
        }
      }
      processor {
        description = "Stamp CISCO_CC_SITE ID on cisco.cc and com.dynatrace.extension metrics with site_id dim"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_cisco_cc_site_metric_stamp"
        matcher     = "isNotNull(site_id) AND matchesValue(dt.metrics.source, \"*cisco-cc*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.cisco_cc_site"
          node_type          = "CISCO_CC_SITE"
          id_components {
            id_component {
              id_component          = "cisco_cc.site_id"
              referenced_field_name = "site_id"
            }
          }
        }
      }
      processor {
        description = "Stamp EXT_NETWORK_DEVICE ID on CC3 device/interface metrics (needed for belongs_to edge on interface stamps)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_device_metric_stamp"
        matcher     = "isNotNull(chassis.mac) AND matchesValue(dt.metrics.source, \"*cisco-cc*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
      processor {
        description = "Stamp EXT_NETWORK_INTERFACE ID on CC3 interface metrics"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_interface_metric_stamp"
        matcher     = "isNotNull(mac.address) AND isNotNull(if.name) AND isNotNull(chassis.mac) AND matchesValue(dt.metrics.source, \"*cisco-cc*\")"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "if.name"
            }
            id_component {
              id_component          = "device.chassis_mac"
              referenced_field_name = "chassis.mac"
            }
          }
        }
      }
    }
  }
}
