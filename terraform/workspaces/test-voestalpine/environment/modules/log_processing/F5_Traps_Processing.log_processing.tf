resource "dynatrace_log_processing" "F5_Traps_Processing" {
  enabled      = true
  insert_after = "vu9U3hXa3q0AAAABACNidWlsdGluOmxvZ21vbml0b3JpbmcubG9nLWRwcC1ydWxlcwAGdGVuYW50AAZ0ZW5hbnQAJGM1ODQxMTJmLTk1MWUtNDRkNC1hNjg3LTg4MmMyYmEyZDhlMr7vVN4V2t6t"
  query        =<<-EOT
    log.source == "snmptraps" AND matchesPhrase(snmp.trap_oid, "F5-BIGIP-COMMON-MIB::*")
  EOT
  rule_name    = "F5 Traps Processing"
  processor_definition {
    rule =<<-EOT
      USING(
        IN "SNMPv2-MIB::snmpTrapOID":STRING,
        INOUT "F5-BIGIP-COMMON-MIB::bigipNotifyObjMsg":STRING,
        INOUT "SNMPv2-MIB::snmpTrapEnterprise":STRING,
        INOUT "DISMAN-EVENT-MIB::sysUpTimeInstance":STRING,
        INOUT "loglevel":STRING
      )
      | FIELDS_RENAME(content:COLUMN("F5-BIGIP-COMMON-MIB::bigipNotifyObjMsg"))
      | FIELDS_ADD(
          status: (
            case
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.10' then 'ERROR' // bigipServiceDown
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.111' then 'WARN' // bigipSsdMwiNearThreshold
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.112' then 'ERROR' // bigipSsdMwiReachedThreshold
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.113' then 'ERROR' // bigipSystemCheckAlertTempHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.114' then 'ERROR' // bigipSystemCheckAlertVoltageHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.115' then 'ERROR' // bigipSystemCheckAlertFanSpeedLow
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.119' then 'ERROR' // bigipLibhalBladePoweredOff
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.12' then 'ERROR' // bigipNodeDown
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.120' then 'ERROR' // bigipLibhalSensorAlarmCritical
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.121' then 'ERROR' // bigipChmandAlertFanTrayBad
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.123' then 'ERROR' // bigipSystemCheckAlertVoltageLow
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.124' then 'ERROR' // bigipSystemCheckAlertMilliVoltageHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.125' then 'ERROR' // bigipSystemCheckAlertCurrentHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.126' then 'ERROR' // bigipSystemCheckAlertPowerHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.127' then 'ERROR' // bigipSystemCheckAlertMilliVoltageLow
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.128' then 'ERROR' // bigipSystemCheckAlertCurrentLow
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.129' then 'ERROR' // bigipSystemCheckAlertPowerLow
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.130' then 'WARN' // bigipNodeRate
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.131' then 'WARN' // bigipMemberRate
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.132' then 'WARN' // bigipVirtualRate
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.133' then 'ERROR' // bigipDosAttackStart
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.136' then 'ERROR' // bigipLtmVsUnavail
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.138' then 'WARN' // bigipLtmVsDisabled
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.151' then 'ERROR' // bigipSystemShutdown
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.152' then 'ERROR' // bigipFipsDeviceError
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.155' then 'ERROR' // bigipUpdateError
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.158' then 'ERROR' // bigipDDMPowerAlarm
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.159' then 'WARN' // bigipDDMPowerWarn
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.166' then 'ERROR' // bigipFipsFault
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.167' then 'WARN' // bigipLibhalAomEventWarning
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.168' then 'ERROR' // bigipLibhalAomEventError
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.169' then 'ERROR' // bigipLibhalAomEventAlert
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.17' then 'ERROR' // bigipFeatureFailed
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.170' then 'ERROR' // bigipLibhalAomEventCritical
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.171' then 'ERROR' // bigipLibhalAomEventEmergency
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.173' then 'WARN' // bigipLibhalAomSensorTempWarning
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.174' then 'ERROR' // bigipLibhalAomSensorTempError
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.175' then 'ERROR' // bigipLibhalAomSensorTempAlert
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.176' then 'ERROR' // bigipLibhalAomSensorTempCritical
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.177' then 'ERROR' // bigipLibhalAomSensorTempEmergency
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.179' then 'WARN' // bigipLibhalAomSensorFanWarning
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.180' then 'ERROR' // bigipLibhalAomSensorFanError
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.181' then 'ERROR' // bigipLibhalAomSensorFanAlert
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.182' then 'ERROR' // bigipLibhalAomSensorFanCritical
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.183' then 'ERROR' // bigipLibhalAomSensorFanEmergency
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.185' then 'WARN' // bigipLibhalAomSensorPwrWarning
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.186' then 'ERROR' // bigipLibhalAomSensorPwrError
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.187' then 'ERROR' // bigipLibhalAomSensorPwrAlert
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.188' then 'ERROR' // bigipLibhalAomSensorPwrCritical
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.189' then 'ERROR' // bigipLibhalAomSensorPwrEmergency
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.19' then 'ERROR' // bigipLicenseFailed
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.20' then 'ERROR' // bigipLicenseExpired
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.21' then 'WARN' // bigipTamdAlert
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.24' then 'WARN' // bigipNetLinkDown
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.25' then 'WARN' // bigipDiskPartitionWarn
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.26' then 'WARN' // bigipDiskPartitionGrowth
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.29' then 'ERROR' // bigipLogEmerg
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.30' then 'ERROR' // bigipLogAlert
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.31' then 'ERROR' // bigipLogCrit
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.32' then 'WARN' // bigipLogErr
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.33' then 'WARN' // bigipLogWarning
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.4' then 'WARN' // bigipCpuTempHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.5' then 'WARN' // bigipCpuFanSpeedLow
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.6' then 'ERROR' // bigipCpuFanSpeedBad
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.7' then 'ERROR' // bigipChassisTempHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.75' then 'WARN' // bigipStandByFail
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.76' then 'WARN' // bigipInetPortExhaustion
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.8' then 'ERROR' // bigipChassisFanBad
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.87' then 'WARN' // bigipBladeTempHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.88' then 'ERROR' // bigipBladeNoPower
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.9' then 'WARN' // bigipChassisPowerSupplyBad
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.90' then 'ERROR' // bigipBladeOffline
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.93' then 'WARN' // bigipAomCpuTempTooHigh
              when COLUMN('SNMPv2-MIB::snmpTrapOID') == '.1.3.6.1.4.1.3375.2.4.0.96' then 'ERROR' // bigipRaidDiskFailure
              else "INFO"
            end
          )
        )
      | FIELDS_REMOVE(
          COLUMN("loglevel"),
          COLUMN("F5-BIGIP-COMMON-MIB::bigipNotifyObjMsg"),
          COLUMN("SNMPv2-MIB::snmpTrapEnterprise"),
          COLUMN("DISMAN-EVENT-MIB::sysUpTimeInstance")
        )
      EOT
  }
  rule_testing {
    sample_log = jsonencode({
          "DISMAN-EVENT-MIB::sysUpTimeInstance": "436",
          "F5-BIGIP-COMMON-MIB::bigipNotifyObjMsg": "010d0006:0 Chassis power supply 2 has experienced an issue. Status is as follows: DOWN.",
          "SNMPv2-MIB::snmpTrapEnterprise": ".1.3.6.1.4.1.3375.2.4",
          "SNMPv2-MIB::snmpTrapOID": ".1.3.6.1.4.1.3375.2.4.0.9",
          "content": "SNMP trap (F5-BIGIP-COMMON-MIB::bigipChassisPowerSupplyBad) reported from 10.0.11.88\n",
          "device.address": "10.0.11.88",
          "dt.entity.snmptraps:com_dynatrace_ext_snmp-traps": "CUSTOM_DEVICE-A67BA71C6AB8CF0D",
          "dt.ingest.warnings": "processing_prepare_input_error",
          "event.type": "LOG",
          "log.source": "snmptraps",
          "loglevel": "NONE",
          "snmp.trap_oid": "F5-BIGIP-COMMON-MIB::bigipChassisPowerSupplyBad",
          "snmp.version": "2c",
          "status": "NONE",
          "timestamp": "1701359766802"
      })
  }
}
