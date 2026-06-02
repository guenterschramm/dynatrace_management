resource "dynatrace_metric_metadata" "RFC_Incoming_Requests" {
  display_name       = "RFC Incoming Requests"
  metric_id          = "metric-sap.rfcIncomingRequests"
  source_entity_type = "sap:application_server"
  unit               = "Count"
  dimensions {
    dimension {
      display_name = "SID"
      key          = "sid"
    }
    dimension {
      display_name = "Instance Number"
      key          = "instance_number"
    }
    dimension {
      display_name = "Host"
      key          = "host"
    }
    dimension {
      display_name = "Remote Destination"
      key          = "remote_destination"
    }
    dimension {
      display_name = "Target"
      key          = "target"
    }
    dimension {
      display_name = "Program Name"
      key          = "program_name"
    }
    dimension {
      display_name = "Local Destination"
      key          = "local_destination"
    }
    dimension {
      display_name = "Client Number"
      key          = "client_number"
    }
    dimension {
      display_name = "Account"
      key          = "account"
    }
    dimension {
      display_name = "User ID"
      key          = "user_id"
    }
    dimension {
      display_name = "Function Name"
      key          = "function_name"
    }
    dimension {
      display_name = "Entry ID"
      key          = "entry_id"
    }
    dimension {
      display_name = "RFC Caller"
      key          = "rfc_caller"
    }
    dimension {
      display_name = "Task Type"
      key          = "task_type"
    }
  }
}
