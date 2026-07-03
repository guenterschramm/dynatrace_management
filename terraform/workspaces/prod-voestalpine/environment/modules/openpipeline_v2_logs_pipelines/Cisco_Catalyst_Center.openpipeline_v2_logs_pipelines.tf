resource "dynatrace_openpipeline_v2_logs_pipelines" "Cisco_Catalyst_Center" {
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
        description = "Prepare mac array for EXT_NETWORK_DEVICE node extraction from device discovery logs"
        type        = "dql"
        enabled     = true
        id          = "device_logs_prepare_mac_array"
        matcher     = "isNotNull(chassis.mac) AND cisco.cc.eventtype == \"cisco.cc.device_discovery\""
        dql {
          script = "fieldsAdd mac=array(chassis.mac)"
        }
      }
      processor {
        description = "Prepare mac array for EXT_NETWORK_INTERFACE from interface discovery logs"
        type        = "dql"
        enabled     = true
        id          = "interface_logs_prepare_mac_array"
        matcher     = "isNotNull(mac.address) AND cisco.cc.eventtype == \"cisco.cc.interface_discovery\""
        dql {
          script = "fieldsAdd mac=if(isNotNull(mac.address), array(mac.address))"
        }
      }
      processor {
        description = "Set troubleshooting.upsert_source for EXT_NETWORK_DEVICE upsert (required for shared model)"
        type        = "dql"
        enabled     = true
        id          = "add-upsert-source-device"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.device_discovery\""
        dql {
          script = "fieldsAdd troubleshooting.upsert_source = \"extension:cisco-cc|log:device_discovery\""
        }
      }
      processor {
        description = "Set troubleshooting.upsert_source for EXT_NETWORK_INTERFACE upsert (required for shared model)"
        type        = "dql"
        enabled     = true
        id          = "add-upsert-source-interface"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.interface_discovery\""
        dql {
          script = "fieldsAdd troubleshooting.upsert_source = \"extension:cisco-cc|log:interface_discovery\""
        }
      }
    }
  }
  smartscape_edge_extraction {
    processors {
      processor {
        description = "Create physical topology edge between EXT_NETWORK_DEVICE nodes"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "physical_link_device_calls"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.physical_link\" AND isNotNull(dt.smartscape.ext_network_device.source) AND isNotNull(dt.smartscape.ext_network_device.target)"
        smartscape_edge {
          edge_type            = "calls"
          source_id_field_name = "dt.smartscape.ext_network_device.source"
          source_type          = "EXT_NETWORK_DEVICE"
          target_id_field_name = "dt.smartscape.ext_network_device.target"
          target_type          = "EXT_NETWORK_DEVICE"
        }
      }
      processor {
        description = "Create physical topology edge between EXT_NETWORK_INTERFACE nodes"
        type        = "smartscapeEdge"
        enabled     = true
        id          = "physical_link_interface_calls"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.physical_link\" AND isNotNull(dt.smartscape.ext_network_interface.source) AND isNotNull(dt.smartscape.ext_network_interface.target)"
        smartscape_edge {
          edge_type            = "calls"
          source_id_field_name = "dt.smartscape.ext_network_interface.source"
          source_type          = "EXT_NETWORK_INTERFACE"
          target_id_field_name = "dt.smartscape.ext_network_interface.target"
          target_type          = "EXT_NETWORK_INTERFACE"
        }
      }
    }
  }
  smartscape_node_extraction {
    processors {
      processor {
        description = "Stamp CISCO_CC_CENTER ID on discovery, issue, and notification logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_cisco_cc_center_log_stamp"
        matcher     =<<-EOT
          isNotNull(center) AND center != "" AND (cisco.cc.eventtype == "cisco.cc.site_discovery" OR cisco.cc.eventtype == "cisco.cc.device_discovery" OR cisco.cc.eventtype == "cisco.cc.interface_discovery" OR cisco.cc.eventtype == "cisco.cc.issue" OR cisco.cc.eventtype == "cisco.cc.event")
        EOT
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
        description = "Upsert CISCO_CC_CENTER from site discovery logs (no center-specific logs exist)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_cisco_cc_center_node"
        matcher     = "isNotNull(center) AND cisco.cc.eventtype == \"cisco.cc.site_discovery\""
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.cisco_cc_center"
          node_type          = "CISCO_CC_CENTER"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.center"
              referenced_field_name = "center"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.endpoint_url"
              referenced_field_name = "endpoint_url"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.cisco_cc:center"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "cisco_cc.center"
              referenced_field_name = "center"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CISCO_CC_CENTER"
              source_field_name = "center"
            }
          }
        }
      }
      processor {
        description = "Stamp CISCO_CC_SITE ID on discovery, issue, and notification logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_cisco_cc_site_log_stamp"
        matcher     =<<-EOT
          isNotNull(site_id) AND (cisco.cc.eventtype == "cisco.cc.site_discovery" OR cisco.cc.eventtype == "cisco.cc.device_discovery" OR cisco.cc.eventtype == "cisco.cc.interface_discovery" OR cisco.cc.eventtype == "cisco.cc.issue" OR cisco.cc.eventtype == "cisco.cc.event")
        EOT
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
        description = "Create CISCO_CC_SITE from site discovery logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_cisco_cc_site_node"
        matcher     =<<-EOT
          cisco.cc.eventtype == "cisco.cc.site_discovery" AND isNotNull(site_id) AND isNotNull(site_name) AND site_name != ""
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.cisco_cc_site"
          node_type          = "CISCO_CC_SITE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_id"
              referenced_field_name = "site_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_name"
              referenced_field_name = "site_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_type"
              referenced_field_name = "site_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_name_hierarchy"
              referenced_field_name = "site_name_hierarchy"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.cc_site_link"
              referenced_field_name = "cc_site_link"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.parent_site_id"
              referenced_field_name = "parent_site_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.level"
              referenced_field_name = "level"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.center"
              referenced_field_name = "center"
            }
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.cisco_cc:site"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "cisco_cc.site_id"
              referenced_field_name = "site_id"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "CISCO_CC_SITE"
              source_field_name = "site_name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.cisco_cc_center"
              target_type          = "CISCO_CC_CENTER"
            }
          }
        }
      }
      processor {
        description = "Stamp EXT_NETWORK_DEVICE ID on discovery, issue, and notification logs (also needed for belongs_to edge on interface)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_device_log_stamp"
        matcher     =<<-EOT
          isNotNull(chassis.mac) AND (cisco.cc.eventtype == "cisco.cc.device_discovery" OR cisco.cc.eventtype == "cisco.cc.interface_discovery" OR cisco.cc.eventtype == "cisco.cc.issue" OR cisco.cc.eventtype == "cisco.cc.event")
        EOT
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
        description = "Upsert EXT_NETWORK_DEVICE from device discovery logs with CC-specific properties"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_device_log_node"
        matcher     =<<-EOT
          cisco.cc.eventtype == "cisco.cc.device_discovery" AND isNotNull(chassis.mac) AND isNotNull(device) AND device != ""
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "chassis_mac"
              referenced_field_name = "chassis.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "monitoring_mode"
              referenced_field_name = "monitoring.mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "device_type"
              referenced_field_name = "type"
            }
            smartscape_field_extraction_entry {
              field_name            = "vendor"
              referenced_field_name = "vendor"
            }
            smartscape_field_extraction_entry {
              field_name            = "contact"
              referenced_field_name = "contact"
            }
            smartscape_field_extraction_entry {
              field_name            = "location"
              referenced_field_name = "location"
            }
            smartscape_field_extraction_entry {
              field_name            = "ip"
              referenced_field_name = "device_ip_address"
            }
            smartscape_field_extraction_entry {
              field_name            = "serial_number"
              referenced_field_name = "serial_number"
            }
            smartscape_field_extraction_entry {
              field_name            = "software_revision"
              referenced_field_name = "os_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "os_name"
              referenced_field_name = "os_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.device_id"
              referenced_field_name = "device_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_id"
              referenced_field_name = "site_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_name"
              referenced_field_name = "site_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_name_hierarchy"
              referenced_field_name = "site_name_hierarchy"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.role"
              referenced_field_name = "role"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.family"
              referenced_field_name = "family"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.platform_id"
              referenced_field_name = "platform_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.serial_number"
              referenced_field_name = "serial_number"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.uptime_text"
              referenced_field_name = "uptime_text"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.uptime_seconds"
              referenced_field_name = "uptime_seconds"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.os_type"
              referenced_field_name = "os_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.os_version"
              referenced_field_name = "os_version"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.reachability_status"
              referenced_field_name = "reachability_status"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.cc_device_link"
              referenced_field_name = "cc_device_link"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.memory_size"
              referenced_field_name = "memory_size"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.memory_size_text"
              referenced_field_name = "memory_size_text"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.center"
              referenced_field_name = "center"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.site_type"
              referenced_field_name = "site_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.cc_site_link"
              referenced_field_name = "cc_site_link"
            }
          }
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "EXT_NETWORK_DEVICE"
              source_field_name = "device"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.cisco_cc_site"
              target_type          = "CISCO_CC_SITE"
            }
            smartscape_static_edge_extraction_entry {
              edge_type            = "runs_on"
              target_id_field_name = "dt.smartscape.cisco_cc_center"
              target_type          = "CISCO_CC_CENTER"
            }
          }
        }
      }
      processor {
        description = "Upsert platform-standard and primary tags/fields onto EXT_NETWORK_DEVICE (separate processor due to 32-field limit on main processor)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_device_log_node_dt_fields"
        matcher     =<<-EOT
          cisco.cc.eventtype == "cisco.cc.device_discovery" AND isNotNull(chassis.mac) AND isNotNull(device) AND device != ""
        EOT
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_device"
          node_type          = "EXT_NETWORK_DEVICE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:device"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "chassis.mac"
            }
          }
          node_name {
            type = "field"
            field {
              default_value     = "EXT_NETWORK_DEVICE"
              source_field_name = "device"
            }
          }
        }
      }
      processor {
        description = "Stamp EXT_NETWORK_INTERFACE ID on interface discovery logs"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_interface_log_stamp"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.interface_discovery\" AND isNotNull(mac.address) AND isNotNull(if.name) AND isNotNull(chassis.mac)"
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
      processor {
        description = "Upsert EXT_NETWORK_INTERFACE from interface discovery logs with CC-specific properties"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_interface_log_node"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.interface_discovery\" AND isNotNull(mac.address) AND isNotNull(if.name) AND isNotNull(chassis.mac)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "device.chassis_mac"
              referenced_field_name = "chassis.mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "mac"
              referenced_field_name = "mac"
            }
            smartscape_field_extraction_entry {
              field_name            = "alias"
              referenced_field_name = "if.alias"
            }
            smartscape_field_extraction_entry {
              field_name            = "interface_type"
              referenced_field_name = "if.type"
            }
            smartscape_field_extraction_entry {
              field_name            = "operational_status"
              referenced_field_name = "oper.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "admin_status"
              referenced_field_name = "admin.status"
            }
            smartscape_field_extraction_entry {
              field_name            = "speed"
              referenced_field_name = "if.speed"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.interface_id"
              referenced_field_name = "interface_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.device_id"
              referenced_field_name = "device_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_speed_text"
              referenced_field_name = "if_speed_text"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_index"
              referenced_field_name = "if_index"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_port_name"
              referenced_field_name = "if_port_name"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_description"
              referenced_field_name = "if_description"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_ip_address"
              referenced_field_name = "if_ip_address"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_port_mode"
              referenced_field_name = "if_port_mode"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_port_type"
              referenced_field_name = "if_port_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_type"
              referenced_field_name = "if_type"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.if_vlan_id"
              referenced_field_name = "if_vlan_id"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.admin_status"
              referenced_field_name = "admin_status"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.oper_status"
              referenced_field_name = "oper_status"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.center"
              referenced_field_name = "center"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.device"
              referenced_field_name = "device"
            }
            smartscape_field_extraction_entry {
              field_name            = "cisco_cc.family"
              referenced_field_name = "family"
            }
          }
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
          node_name {
            type = "field"
            field {
              default_value     = "EXT_NETWORK_INTERFACE"
              source_field_name = "if.name"
            }
          }
          static_edges_to_extract {
            smartscape_static_edge_extraction_entry {
              edge_type            = "belongs_to"
              target_id_field_name = "dt.smartscape.ext_network_device"
              target_type          = "EXT_NETWORK_DEVICE"
            }
          }
        }
      }
      processor {
        description = "Upsert platform-standard and primary tags/fields onto EXT_NETWORK_INTERFACE (separate processor due to 32-field limit on main processor)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "ext_network_interface_log_node_dt_fields"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.interface_discovery\" AND isNotNull(mac.address) AND isNotNull(if.name) AND isNotNull(chassis.mac)"
        smartscape_node {
          extract_node       = true
          node_id_field_name = "dt.smartscape.ext_network_interface"
          node_type          = "EXT_NETWORK_INTERFACE"
          fields_to_extract {
            smartscape_field_extraction_entry {
              field_name            = "id_classic"
              referenced_field_name = "dt.entity.network:interface"
            }
            smartscape_field_extraction_entry {
              field_name            = "troubleshooting.upsert_source"
              referenced_field_name = "troubleshooting.upsert_source"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.security_context"
              referenced_field_name = "dt.security_context"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.product"
              referenced_field_name = "dt.cost.product"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.cost.costcenter"
              referenced_field_name = "dt.cost.costcenter"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.account.id"
              referenced_field_name = "aws.account.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "aws.region"
              referenced_field_name = "aws.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.location"
              referenced_field_name = "azure.location"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.resource.group"
              referenced_field_name = "azure.resource.group"
            }
            smartscape_field_extraction_entry {
              field_name            = "azure.subscription"
              referenced_field_name = "azure.subscription"
            }
            smartscape_field_extraction_entry {
              field_name            = "dt.host_group.id"
              referenced_field_name = "dt.host_group.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.project.id"
              referenced_field_name = "gcp.project.id"
            }
            smartscape_field_extraction_entry {
              field_name            = "gcp.region"
              referenced_field_name = "gcp.region"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.cluster.name"
              referenced_field_name = "k8s.cluster.name"
            }
            smartscape_field_extraction_entry {
              field_name            = "k8s.namespace.name"
              referenced_field_name = "k8s.namespace.name"
            }
            smartscape_field_extraction_entry {
              field_name            = ""
              referenced_field_name = "primary_tags."
            }
          }
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
          node_name {
            type = "field"
            field {
              default_value     = "EXT_NETWORK_INTERFACE"
              source_field_name = "if.name"
            }
          }
        }
      }
      processor {
        description = "Enrich physical link logs by source EXT_NETWORK_DEVICE Smartscape ID (stamp for later use in the pipeline)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "physical_link_source_device_log_stamp"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.physical_link\" AND isNotNull(source_chassis_mac)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_device.source"
          node_type          = "EXT_NETWORK_DEVICE"
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "source_chassis_mac"
            }
          }
        }
      }
      processor {
        description = "Enrich physical link logs by target EXT_NETWORK_DEVICE Smartscape ID (stamp for later use in the pipeline)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "physical_link_target_device_log_stamp"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.physical_link\" AND isNotNull(target_chassis_mac)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_device.target"
          node_type          = "EXT_NETWORK_DEVICE"
          id_components {
            id_component {
              id_component          = "identifier"
              referenced_field_name = "target_chassis_mac"
            }
          }
        }
      }
      processor {
        description = "Enrich physical link logs by source EXT_NETWORK_INTERFACE Smartscape ID (stamp for later use in the pipeline)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "physical_link_source_interface_log_stamp"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.physical_link\" AND isNotNull(source_port_name) AND isNotNull(source_chassis_mac)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_interface.source"
          node_type          = "EXT_NETWORK_INTERFACE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "source_port_name"
            }
            id_component {
              id_component          = "device.chassis_mac"
              referenced_field_name = "source_chassis_mac"
            }
          }
        }
      }
      processor {
        description = "Enrich physical link logs by target EXT_NETWORK_INTERFACE Smartscape ID (stamp for later use in the pipeline)"
        type        = "smartscapeNode"
        enabled     = true
        id          = "physical_link_target_interface_log_stamp"
        matcher     = "cisco.cc.eventtype == \"cisco.cc.physical_link\" AND isNotNull(target_port_name) AND isNotNull(target_chassis_mac)"
        smartscape_node {
          extract_node       = false
          node_id_field_name = "dt.smartscape.ext_network_interface.target"
          node_type          = "EXT_NETWORK_INTERFACE"
          id_components {
            id_component {
              id_component          = "name"
              referenced_field_name = "target_port_name"
            }
            id_component {
              id_component          = "device.chassis_mac"
              referenced_field_name = "target_chassis_mac"
            }
          }
        }
      }
    }
  }
}
