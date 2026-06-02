resource "dynatrace_metric_metadata" "Certificate_status" {
  description        = "The status of detected certificates"
  display_name       = "Certificate status"
  metric_id          = "metric-certificate.monitor.status"
  source_entity_type = "python:certificate_monitor_certificate"
  tags               = [ "Extension", "Python" ]
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "Monitoring config"
      key          = "monitoring_config"
    }
    dimension {
      display_name = "Expiration range"
      key          = "certificate_lifecycle"
    }
    dimension {
      display_name = "Lifecycle stage"
      key          = "certificate_stage"
    }
    dimension {
      display_name = "Common name"
      key          = "common_name"
    }
    dimension {
      display_name = "Host port"
      key          = "host_port"
    }
    dimension {
      display_name = "Issuer Common Name"
      key          = "issuer_common_name"
    }
    dimension {
      display_name = "Issuer country"
      key          = "issuer_country_name"
    }
    dimension {
      display_name = "Issuer locality"
      key          = "issuer_locality_name"
    }
    dimension {
      display_name = "Issuer org"
      key          = "issuer_organization_name"
    }
    dimension {
      display_name = "Issuer province"
      key          = "issuer_state_or_province_name"
    }
    dimension {
      display_name = "Port"
      key          = "port"
    }
    dimension {
      display_name = "Subject CN"
      key          = "subject_common_name"
    }
    dimension {
      display_name = "Subject country"
      key          = "subject_country_name"
    }
    dimension {
      display_name = "Subject locality"
      key          = "subject_locality_name"
    }
    dimension {
      display_name = "Subject org"
      key          = "subject_organization_name"
    }
    dimension {
      display_name = "Subject province"
      key          = "subject_state_or_province_name"
    }
    dimension {
      display_name = "Not valid after"
      key          = "validity_not_after"
    }
    dimension {
      display_name = "Not valid before"
      key          = "validity_not_before"
    }
    dimension {
      display_name = "Source"
      key          = "source"
    }
    dimension {
      display_name = "Subject alt names (1)"
      key          = "subject_alt_name_1"
    }
    dimension {
      display_name = "Subject alt names (2)"
      key          = "subject_alt_name_2"
    }
    dimension {
      display_name = "Subject alt names (3)"
      key          = "subject_alt_name_3"
    }
    dimension {
      display_name = "Subject alt names (4)"
      key          = "subject_alt_name_4"
    }
    dimension {
      display_name = "Subject alt names (5)"
      key          = "subject_alt_name_5"
    }
    dimension {
      display_name = "Subject alt names (6)"
      key          = "subject_alt_name_6"
    }
    dimension {
      display_name = "Subject alt names (7)"
      key          = "subject_alt_name_7"
    }
    dimension {
      display_name = "Subject alt names (8)"
      key          = "subject_alt_name_8"
    }
    dimension {
      display_name = "Subject alt names (9)"
      key          = "subject_alt_name_9"
    }
    dimension {
      display_name = "Subject alt names (10)"
      key          = "subject_alt_name_10"
    }
    dimension {
      display_name = "Subject alt names (11)"
      key          = "subject_alt_name_11"
    }
    dimension {
      display_name = "Certificate store"
      key          = "cert_store"
    }
    dimension {
      display_name = "Serial number"
      key          = "sn"
    }
    dimension {
      display_name = "File name"
      key          = "file_name"
    }
    dimension {
      display_name = "Certificate type"
      key          = "cert_type"
    }
    dimension {
      display_name = "Service name"
      key          = "service_name"
    }
    dimension {
      display_name = "Service ID"
      key          = "service_id"
    }
    dimension {
      display_name = "TLS connection version"
      key          = "tls"
    }
    dimension {
      display_name = "Device Address"
      key          = "device.address"
    }
  }
}
