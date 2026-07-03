resource "dynatrace_metric_metadata" "Failover_and_Sync_status" {
  description        = "The failover and config synchronization status of the device. Failover states can be: (0)unknown - the failover status of the device is unknown; (1)offline - the device is offline; (2)forcedOffline - the device is forced offline; (3)standby - the device is standby; (4)active - the device is active. Synchronization status can be: unknown(0), syncing(1), needManualSync(2), inSync(3), syncFailed(4), syncDisconnected(5), standalone(6), awaitingInitialSync(7), incompatibleVersion(8), partialSync(9)"
  display_name       = "Failover and Sync status"
  metric_id          = "metric-com.dynatrace.extension.f5.bigip.sys.cm.state"
  source_entity_type = "f5:instance"
  tags               = [ "F5", "System" ]
  unit               = "NotApplicable"
  dimensions {
    dimension {
      display_name = "Failover state"
      key          = "failover.state"
    }
    dimension {
      display_name = "Synchronization state"
      key          = "sync.state"
    }
    dimension {
      display_name = "F5 Instance name"
      key          = "instance.name"
    }
  }
}
