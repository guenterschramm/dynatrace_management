resource "dynatrace_generic_types" "cisco_cc_site" {
  name         = "cisco_cc:site"
  enabled      = true
  created_by   = "com.dynatrace.extension.cisco-cc 3.0.3"
  display_name = "Catalyst Site"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGE3NmRkYjZmLTljNjItNWFiYi1iNzQzLTAxYTJhMDdjOWNiN77vVN4V2t6t"
  rules {
    rule {
      id_pattern            = "cisco_cc_site_{center}_{site_id}"
      instance_name_pattern = "{site_name_hierarchy}"
      role                  = "default"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Full Site Name"
          key          = "site_name_hierarchy"
          pattern      = "{site_name_hierarchy}"
        }
        attribute {
          display_name = "Site Type"
          key          = "site_type"
          pattern      = "{site_type}"
        }
        attribute {
          display_name = "Site Name"
          key          = "site_name"
          pattern      = "{site_name}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          display_name = "Area"
          key          = "area"
          pattern      = "{area}"
        }
        attribute {
          display_name = "Building"
          key          = "building"
          pattern      = "{building}"
        }
        attribute {
          display_name = "Floor"
          key          = "floor"
          pattern      = "{floor}"
        }
        attribute {
          display_name = "Parent Site Id"
          key          = "parent_site_id"
          pattern      = "{parent_site_id}"
        }
        attribute {
          display_name = "Site Hierarchy Ids"
          key          = "site_id_hierarchy"
          pattern      = "{site_id_hierarchy}"
        }
        attribute {
          display_name = "Hierarchy Level"
          key          = "level"
          pattern      = "{level}"
        }
        attribute {
          display_name = "1st Level name"
          key          = "level_01_name"
          pattern      = "{level_01_name}"
        }
        attribute {
          display_name = "2nd Level name"
          key          = "level_02_name"
          pattern      = "{level_02_name}"
        }
        attribute {
          display_name = "3rd Level name"
          key          = "level_03_name"
          pattern      = "{level_03_name}"
        }
        attribute {
          display_name = "4th Level name"
          key          = "level_04_name"
          pattern      = "{level_04_name}"
        }
        attribute {
          display_name = "Center Site Link"
          key          = "cc_site_link"
          pattern      = "{cc_site_link}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.site_discovery)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "site_id"
        }
        required_dimension {
          key = "site_name_hierarchy"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern            = "cisco_cc_site_{center}_{site_id}"
      instance_name_pattern = "{site_name_hierarchy}"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Full Site Name"
          key          = "site_name_hierarchy"
          pattern      = "{site_name_hierarchy}"
        }
        attribute {
          display_name = "Site Type"
          key          = "site_type"
          pattern      = "{site_type}"
        }
        attribute {
          display_name = "Site Name"
          key          = "site_name"
          pattern      = "{site_name}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.issue)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "site_id"
        }
        required_dimension {
          key = "site_name_hierarchy"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern = "cisco_cc_site_{center}_{site_id}"
      attributes {
        attribute {
          display_name = "Name"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          key     = "cc_event_attr"
          pattern = "true"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "cisco.cc.eventtype"
          value_pattern = "$eq(cisco.cc.event)"
        }
        required_dimension {
          key           = "log.source"
          value_pattern = "$eq(cisco-cc)"
        }
        required_dimension {
          key = "center"
        }
        required_dimension {
          key           = "site_id"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
      }
    }
    rule {
      id_pattern            = "cisco_cc_site_{center}_{site_id}"
      instance_name_pattern = "{site_name_hierarchy}"
      attributes {
        attribute {
          display_name = "Center"
          key          = "center"
          pattern      = "{center}"
        }
        attribute {
          display_name = "Full Site Name"
          key          = "site_name_hierarchy"
          pattern      = "{site_name_hierarchy}"
        }
        attribute {
          display_name = "Site Type"
          key          = "site_type"
          pattern      = "{site_type}"
        }
        attribute {
          display_name = "Site Name"
          key          = "site_name"
          pattern      = "{site_name}"
        }
        attribute {
          display_name = "Site Id"
          key          = "site_id"
          pattern      = "{site_id}"
        }
        attribute {
          display_name = "Security Context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key = "center"
        }
        required_dimension {
          key = "site_id"
        }
        required_dimension {
          key = "site_name_hierarchy"
        }
      }
      sources {
        source {
          condition   = "$prefix(cisco.cc.site.)"
          source_type = "Metrics"
        }
        source {
          condition   = "$prefix(cisco.cc.device.)"
          source_type = "Metrics"
        }
      }
    }
  }
}
