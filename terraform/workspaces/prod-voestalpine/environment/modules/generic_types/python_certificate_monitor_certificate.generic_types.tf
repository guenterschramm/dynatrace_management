resource "dynatrace_generic_types" "python_certificate_monitor_certificate" {
  name         = "python:certificate_monitor_certificate"
  enabled      = true
  created_by   = "com.dynatrace.custom.python-certificate-monitor 2.0.0"
  display_name = "Certificate"
  insert_after = "vu9U3hXa3q0AAAABACZidWlsdGluOm1vbml0b3JlZGVudGl0aWVzLmdlbmVyaWMudHlwZQAGdGVuYW50AAZ0ZW5hbnQAJGUzOWFmOWZmLTJmZjktNTRiYi05NTk0LTQ3MGFkNjgzMjg5N77vVN4V2t6t"
  rules {
    rule {
      icon_pattern          = "certificate"
      id_pattern            = "python_certificate_monitor_certificate_{subject_common_name}_{port}_{validity_not_after}_{dt.entity.host}"
      instance_name_pattern = "{subject_common_name} certificate on {port}"
      role                  = "Default"
      attributes {
        attribute {
          display_name = "Monitoring config"
          key          = "monitoring_config"
          pattern      = "{monitoring_config}"
        }
        attribute {
          display_name = "Host"
          key          = "host_att"
          pattern      = "{dt.entity.host}"
        }
        attribute {
          display_name = "Common name"
          key          = "common_name"
          pattern      = "{common_name}"
        }
        attribute {
          display_name = "Host port"
          key          = "host_port"
          pattern      = "{host_port}"
        }
        attribute {
          display_name = "Expiration range"
          key          = "cert_lifecycle"
          pattern      = "{certificate_lifecycle}"
        }
        attribute {
          display_name = "Lifecycle stage"
          key          = "certificate_stage"
          pattern      = "{certificate_stage}"
        }
        attribute {
          display_name = "Issuer Common Name"
          key          = "issuer_common_name"
          pattern      = "{issuer_common_name}"
        }
        attribute {
          display_name = "Issuer org name"
          key          = "issuer_org_name"
          pattern      = "{issuer_organization_name}"
        }
        attribute {
          display_name = "Port"
          key          = "port"
          pattern      = "{port}"
        }
        attribute {
          display_name = "Subject CN"
          key          = "subject_common_name"
          pattern      = "{subject_common_name}"
        }
        attribute {
          display_name = "Subject org"
          key          = "subject_org_name"
          pattern      = "{subject_organization_name}"
        }
        attribute {
          display_name = "Not valid after"
          key          = "validity_not_after"
          pattern      = "{validity_not_after}"
        }
        attribute {
          display_name = "Not valid before"
          key          = "validity_not_before"
          pattern      = "{validity_not_before}"
        }
        attribute {
          display_name = "Subject alt names"
          key          = "subject_alt_name_1"
          pattern      = "{subject_alt_name_1}"
        }
        attribute {
          display_name = "Subject alt names (2)"
          key          = "subject_alt_name_2"
          pattern      = "{subject_alt_name_2}"
        }
        attribute {
          display_name = "Subject alt names (3)"
          key          = "subject_alt_name_3"
          pattern      = "{subject_alt_name_3}"
        }
        attribute {
          display_name = "Subject alt names (4)"
          key          = "subject_alt_name_4"
          pattern      = "{subject_alt_name_4}"
        }
        attribute {
          display_name = "Subject alt names (4)"
          key          = "subject_alt_name_5"
          pattern      = "{subject_alt_name_5}"
        }
        attribute {
          display_name = "Subject alt names (6)"
          key          = "subject_alt_name_6"
          pattern      = "{subject_alt_name_6}"
        }
        attribute {
          display_name = "Subject alt names (7)"
          key          = "subject_alt_name_7"
          pattern      = "{subject_alt_name_7}"
        }
        attribute {
          display_name = "Subject alt names (8)"
          key          = "subject_alt_name_8"
          pattern      = "{subject_alt_name_8}"
        }
        attribute {
          display_name = "Subject alt names (9)"
          key          = "subject_alt_name_9"
          pattern      = "{subject_alt_name_9}"
        }
        attribute {
          display_name = "Subject alt names (10)"
          key          = "subject_alt_name_10"
          pattern      = "{subject_alt_name_10}"
        }
        attribute {
          display_name = "Subject alt names (11)"
          key          = "subject_alt_name_11"
          pattern      = "{subject_alt_name_11}"
        }
        attribute {
          display_name = "Source"
          key          = "source"
          pattern      = "{source}"
        }
        attribute {
          display_name = "Serial number"
          key          = "serial_number"
          pattern      = "{sn}"
        }
        attribute {
          display_name = "TLS connection version"
          key          = "tls"
          pattern      = "{tls}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "source"
          value_pattern = "$eq(OneAgent)"
        }
        required_dimension {
          key           = "validity_not_after"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "dt.entity.host"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "port"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "subject_common_name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "certificate"
      id_pattern            = "python_certificate_monitor_certificate_{subject_common_name}_{sn}_{cert_store}_{dt.entity.host}"
      instance_name_pattern = "{subject_common_name} certificate (WCS)"
      role                  = "Default"
      attributes {
        attribute {
          display_name = "Monitoring config"
          key          = "monitoring_config"
          pattern      = "{monitoring_config}"
        }
        attribute {
          display_name = "Host"
          key          = "host_att"
          pattern      = "{dt.entity.host}"
        }
        attribute {
          display_name = "Common name"
          key          = "common_name"
          pattern      = "{common_name}"
        }
        attribute {
          display_name = "Host port"
          key          = "host_port"
          pattern      = "{host_port}"
        }
        attribute {
          display_name = "Expiration range"
          key          = "cert_lifecycle"
          pattern      = "{certificate_lifecycle}"
        }
        attribute {
          display_name = "Lifecycle stage"
          key          = "certificate_stage"
          pattern      = "{certificate_stage}"
        }
        attribute {
          display_name = "Issuer Common Name"
          key          = "issuer_common_name"
          pattern      = "{issuer_common_name}"
        }
        attribute {
          display_name = "Issuer org name"
          key          = "issuer_org_name"
          pattern      = "{issuer_organization_name}"
        }
        attribute {
          display_name = "Subject CN"
          key          = "subject_common_name"
          pattern      = "{subject_common_name}"
        }
        attribute {
          display_name = "Subject org"
          key          = "subject_org_name"
          pattern      = "{subject_organization_name}"
        }
        attribute {
          display_name = "Not valid after"
          key          = "validity_not_after"
          pattern      = "{validity_not_after}"
        }
        attribute {
          display_name = "Not valid before"
          key          = "validity_not_before"
          pattern      = "{validity_not_before}"
        }
        attribute {
          display_name = "Subject alt names"
          key          = "subject_alt_name_1"
          pattern      = "{subject_alt_name_1}"
        }
        attribute {
          display_name = "Subject alt names (2)"
          key          = "subject_alt_name_2"
          pattern      = "{subject_alt_name_2}"
        }
        attribute {
          display_name = "Subject alt names (3)"
          key          = "subject_alt_name_3"
          pattern      = "{subject_alt_name_3}"
        }
        attribute {
          display_name = "Subject alt names (4)"
          key          = "subject_alt_name_4"
          pattern      = "{subject_alt_name_4}"
        }
        attribute {
          display_name = "Subject alt names (4)"
          key          = "subject_alt_name_5"
          pattern      = "{subject_alt_name_5}"
        }
        attribute {
          display_name = "Subject alt names (6)"
          key          = "subject_alt_name_6"
          pattern      = "{subject_alt_name_6}"
        }
        attribute {
          display_name = "Subject alt names (7)"
          key          = "subject_alt_name_7"
          pattern      = "{subject_alt_name_7}"
        }
        attribute {
          display_name = "Subject alt names (8)"
          key          = "subject_alt_name_8"
          pattern      = "{subject_alt_name_8}"
        }
        attribute {
          display_name = "Subject alt names (9)"
          key          = "subject_alt_name_9"
          pattern      = "{subject_alt_name_9}"
        }
        attribute {
          display_name = "Subject alt names (10)"
          key          = "subject_alt_name_10"
          pattern      = "{subject_alt_name_10}"
        }
        attribute {
          display_name = "Subject alt names (11)"
          key          = "subject_alt_name_11"
          pattern      = "{subject_alt_name_11}"
        }
        attribute {
          display_name = "Source"
          key          = "source"
          pattern      = "{source}"
        }
        attribute {
          display_name = "Serial number"
          key          = "serial_number"
          pattern      = "{sn}"
        }
        attribute {
          display_name = "Certificate Store"
          key          = "cert_store"
          pattern      = "{cert_store}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "source"
          value_pattern = "$eq(WCS)"
        }
        required_dimension {
          key           = "dt.entity.host"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "cert_store"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "subject_common_name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "sn"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "certificate"
      id_pattern            = "python_certificate_monitor_certificate_{subject_common_name}_{host_port}_{validity_not_after}_{monitoring_config}"
      instance_name_pattern = "{subject_common_name} certificate on {host_port} (remote)"
      role                  = "Default"
      attributes {
        attribute {
          display_name = "Monitoring config"
          key          = "monitoring_config"
          pattern      = "{monitoring_config}"
        }
        attribute {
          display_name = "Host"
          key          = "host_att"
          pattern      = "{dt.entity.host}"
        }
        attribute {
          display_name = "Source"
          key          = "source"
          pattern      = "{source}"
        }
        attribute {
          display_name = "Common name"
          key          = "common_name"
          pattern      = "{common_name}"
        }
        attribute {
          display_name = "Host port"
          key          = "host_port"
          pattern      = "{host_port}"
        }
        attribute {
          display_name = "Expiration range"
          key          = "cert_lifecycle"
          pattern      = "{certificate_lifecycle}"
        }
        attribute {
          display_name = "Lifecycle stage"
          key          = "certificate_stage"
          pattern      = "{certificate_stage}"
        }
        attribute {
          display_name = "Issuer Common Name"
          key          = "issuer_common_name"
          pattern      = "{issuer_common_name}"
        }
        attribute {
          display_name = "Issuer org name"
          key          = "issuer_org_name"
          pattern      = "{issuer_organization_name}"
        }
        attribute {
          display_name = "Port"
          key          = "port"
          pattern      = "{port}"
        }
        attribute {
          display_name = "Subject CN"
          key          = "subject_common_name"
          pattern      = "{subject_common_name}"
        }
        attribute {
          display_name = "Subject org"
          key          = "subject_org_name"
          pattern      = "{subject_organization_name}"
        }
        attribute {
          display_name = "Not valid after"
          key          = "validity_not_after"
          pattern      = "{validity_not_after}"
        }
        attribute {
          display_name = "Not valid before"
          key          = "validity_not_before"
          pattern      = "{validity_not_before}"
        }
        attribute {
          display_name = "Subject alt names"
          key          = "subject_alt_name_1"
          pattern      = "{subject_alt_name_1}"
        }
        attribute {
          display_name = "Subject alt names (2)"
          key          = "subject_alt_name_2"
          pattern      = "{subject_alt_name_2}"
        }
        attribute {
          display_name = "Subject alt names (3)"
          key          = "subject_alt_name_3"
          pattern      = "{subject_alt_name_3}"
        }
        attribute {
          display_name = "Subject alt names (4)"
          key          = "subject_alt_name_4"
          pattern      = "{subject_alt_name_4}"
        }
        attribute {
          display_name = "Subject alt names (5)"
          key          = "subject_alt_name_5"
          pattern      = "{subject_alt_name_5}"
        }
        attribute {
          display_name = "Subject alt names (6)"
          key          = "subject_alt_name_6"
          pattern      = "{subject_alt_name_6}"
        }
        attribute {
          display_name = "Subject alt names (7)"
          key          = "subject_alt_name_7"
          pattern      = "{subject_alt_name_7}"
        }
        attribute {
          display_name = "Subject alt names (8)"
          key          = "subject_alt_name_8"
          pattern      = "{subject_alt_name_8}"
        }
        attribute {
          display_name = "Subject alt names (9)"
          key          = "subject_alt_name_9"
          pattern      = "{subject_alt_name_9}"
        }
        attribute {
          display_name = "Subject alt names (10)"
          key          = "subject_alt_name_10"
          pattern      = "{subject_alt_name_10}"
        }
        attribute {
          display_name = "Subject alt names (11)"
          key          = "subject_alt_name_11"
          pattern      = "{subject_alt_name_11}"
        }
        attribute {
          display_name = "Serial number"
          key          = "serial_number"
          pattern      = "{sn}"
        }
        attribute {
          display_name = "TLS connection version"
          key          = "tls"
          pattern      = "{tls}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "source"
          value_pattern = "$eq(Domain)"
        }
        required_dimension {
          key           = "validity_not_after"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "monitoring_config"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "subject_common_name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "host_port"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
      }
    }
    rule {
      icon_pattern          = "certificate"
      id_pattern            = "python_certificate_monitor_certificate_{subject_common_name}_{file_name}_{validity_not_after}_{monitoring_config}"
      instance_name_pattern = "{subject_common_name} certificate in {file_name} (external)"
      role                  = "Default"
      attributes {
        attribute {
          display_name = "Monitoring config"
          key          = "monitoring_config"
          pattern      = "{monitoring_config}"
        }
        attribute {
          display_name = "Host"
          key          = "host_att"
          pattern      = "{dt.entity.host}"
        }
        attribute {
          display_name = "Source"
          key          = "source"
          pattern      = "{source}"
        }
        attribute {
          display_name = "Common name"
          key          = "common_name"
          pattern      = "{common_name}"
        }
        attribute {
          display_name = "Host port"
          key          = "host_port"
          pattern      = "{host_port}"
        }
        attribute {
          display_name = "Expiration range"
          key          = "cert_lifecycle"
          pattern      = "{certificate_lifecycle}"
        }
        attribute {
          display_name = "Lifecycle stage"
          key          = "certificate_stage"
          pattern      = "{certificate_stage}"
        }
        attribute {
          display_name = "Issuer Common Name"
          key          = "issuer_common_name"
          pattern      = "{issuer_common_name}"
        }
        attribute {
          display_name = "Issuer org name"
          key          = "issuer_org_name"
          pattern      = "{issuer_organization_name}"
        }
        attribute {
          display_name = "Port"
          key          = "port"
          pattern      = "{port}"
        }
        attribute {
          display_name = "Subject CN"
          key          = "subject_common_name"
          pattern      = "{subject_common_name}"
        }
        attribute {
          display_name = "Subject org"
          key          = "subject_org_name"
          pattern      = "{subject_organization_name}"
        }
        attribute {
          display_name = "Not valid after"
          key          = "validity_not_after"
          pattern      = "{validity_not_after}"
        }
        attribute {
          display_name = "Not valid before"
          key          = "validity_not_before"
          pattern      = "{validity_not_before}"
        }
        attribute {
          display_name = "Subject alt names"
          key          = "subject_alt_name_1"
          pattern      = "{subject_alt_name_1}"
        }
        attribute {
          display_name = "Subject alt names (2)"
          key          = "subject_alt_name_2"
          pattern      = "{subject_alt_name_2}"
        }
        attribute {
          display_name = "Subject alt names (3)"
          key          = "subject_alt_name_3"
          pattern      = "{subject_alt_name_3}"
        }
        attribute {
          display_name = "Subject alt names (4)"
          key          = "subject_alt_name_4"
          pattern      = "{subject_alt_name_4}"
        }
        attribute {
          display_name = "Subject alt names (5)"
          key          = "subject_alt_name_5"
          pattern      = "{subject_alt_name_5}"
        }
        attribute {
          display_name = "Subject alt names (6)"
          key          = "subject_alt_name_6"
          pattern      = "{subject_alt_name_6}"
        }
        attribute {
          display_name = "Subject alt names (7)"
          key          = "subject_alt_name_7"
          pattern      = "{subject_alt_name_7}"
        }
        attribute {
          display_name = "Subject alt names (8)"
          key          = "subject_alt_name_8"
          pattern      = "{subject_alt_name_8}"
        }
        attribute {
          display_name = "Subject alt names (9)"
          key          = "subject_alt_name_9"
          pattern      = "{subject_alt_name_9}"
        }
        attribute {
          display_name = "Subject alt names (10)"
          key          = "subject_alt_name_10"
          pattern      = "{subject_alt_name_10}"
        }
        attribute {
          display_name = "Subject alt names (11)"
          key          = "subject_alt_name_11"
          pattern      = "{subject_alt_name_11}"
        }
        attribute {
          display_name = "Serial number"
          key          = "serial_number"
          pattern      = "{sn}"
        }
        attribute {
          display_name = "File name"
          key          = "file_name"
          pattern      = "{file_name}"
        }
        attribute {
          display_name = "Certificate type"
          key          = "cert_type"
          pattern      = "{cert_type}"
        }
        attribute {
          display_name = "Service name"
          key          = "service_name"
          pattern      = "{service_name}"
        }
        attribute {
          display_name = "Service ID"
          key          = "service_id"
          pattern      = "{service_id}"
        }
        attribute {
          display_name = "Security context"
          key          = "dt.security_context"
          pattern      = "{dt.security_context}"
        }
      }
      required_dimensions {
        required_dimension {
          key           = "source"
          value_pattern = "$eq(External)"
        }
        required_dimension {
          key           = "validity_not_after"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "monitoring_config"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "file_name"
          value_pattern = "$exists()"
        }
        required_dimension {
          key           = "subject_common_name"
          value_pattern = "$exists()"
        }
      }
      sources {
        source {
          source_type = "Logs"
        }
        source {
          condition   = "$prefix(certificate.monitor)"
          source_type = "Metrics"
        }
      }
    }
  }
}
