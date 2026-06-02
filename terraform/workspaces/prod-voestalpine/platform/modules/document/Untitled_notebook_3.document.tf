resource "dynatrace_document" "Untitled_notebook_3" {
  name    = "Untitled notebook"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-2h",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "7ac91a32-2c61-4df4-a984-05dff7a6ed8b",
          "previousFilterSegments": [],
          "showTitle": false,
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "smartscapeNodes HOST"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 200,
              "dateTime": "2026-03-03T07:59:49.548Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "smartscapeNodes HOST"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 1000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2026-03-03T07:59:49.333000000Z",
                      "start": "2026-03-03T05:59:49.333000000Z"
                    },
                    "canonicalQuery": "smartscapeNodes HOST",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 15,
                    "locale": "de",
                    "notifications": [],
                    "query": "smartscapeNodes HOST",
                    "queryId": "58a8716f-9462-43cb-9a06-20fc5b286cb9",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 60,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "cores": "16",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "16",
                    "host.mac": [
                      "00:50:56:85:73:EC"
                    ],
                    "host.physical.memory": "137438347264",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-05975D427629204E",
                    "id_classic": "HOST-05975D427629204E",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "137438347264",
                    "name": "2236asecmcsb5p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.serial": "None",
                      "system.board.vendor": "Intel Corporation",
                      "system.memory.size": "16493715456",
                      "system.model": "VMware Virtual Platform",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.serial": "None",
                      "system.vendor": "No Enclosure"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:AA:F3"
                    ],
                    "host.physical.memory": "16493715456",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-30A4824A919B88C2",
                    "id_classic": "HOST-30A4824A919B88C2",
                    "lifetime": {
                      "end": "2026-03-03T08:54:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "16493715456",
                    "name": "2217PSMP0010P01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux 8.10 (Ootpa) (kernel 4.18.0-553.84.1.el8_10.x86_64)",
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "4",
                    "host.mac": [
                      "00:50:56:85:41:50"
                    ],
                    "host.physical.memory": "8589328384",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-35DFC2486F7BA6E1",
                    "id_classic": "HOST-35DFC2486F7BA6E1",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "8589328384",
                    "name": "2217asecmawgp.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "4",
                    "host.mac": [
                      "00:50:56:85:74:F7"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-3B354B5980F04E11",
                    "id_classic": "HOST-3B354B5980F04E11",
                    "lifetime": {
                      "end": "2026-03-03T08:54:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2236asmonitor01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:97:98"
                    ],
                    "host.physical.memory": "85898739712",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-3CA4B7A9D088C7AA",
                    "id_classic": "HOST-3CA4B7A9D088C7AA",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "85898739712",
                    "name": "2236asecmcsf5p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "16",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "16",
                    "host.mac": [
                      "00:50:56:85:F3:F3"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-3DDE976CD5D7D916",
                    "id_classic": "HOST-3DDE976CD5D7D916",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217cpm0010p01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:0E:7C"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-3F364FD91594BE69",
                    "id_classic": "HOST-3F364FD91594BE69",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmcsf1p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:DA:04"
                    ],
                    "host.physical.memory": "137438347264",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-5D66F070045A5C86",
                    "id_classic": "HOST-5D66F070045A5C86",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "137438347264",
                    "name": "2217asecmcsb3p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "type": "HOST"
                  },
                  {
                    "cores": "16",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.host_group.id": "Bee4IT",
                    "dt.security_context": [
                      "Bee4IT"
                    ],
                    "host.custom.metadata": {
                      "dt.cost.product": "bee4it_production",
                      "dt.security_context": "Bee4IT"
                    },
                    "host.logical.cpus": "16",
                    "host.mac": [
                      "00:50:56:85:18:2C"
                    ],
                    "host.physical.memory": "51539001344",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-64FAE88DC89F082C",
                    "id_classic": "HOST-64FAE88DC89F082C",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "51539001344",
                    "name": "2217asbee4it01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "dt.cost.costcenter": "P223100000_bee4it",
                      "dt.cost.product": "bee4it_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:6E:40"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-78653E05D05E6DE6",
                    "id_classic": "HOST-78653E05D05E6DE6",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmcsf4p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:0B:40"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-C78D0C795A45AFBC",
                    "id_classic": "HOST-C78D0C795A45AFBC",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmcsf3p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.cost.costcenter": "P017700000_webhosting",
                    "dt.cost.product": "webhosting_production",
                    "dt.host_group.id": "Webhosting",
                    "dt.security_context": [],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.serial": "None",
                      "system.board.vendor": "Intel Corporation",
                      "system.memory.size": "83870945280",
                      "system.model": "VMware Virtual Platform",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "Intel(R) Xeon(R) 6737P",
                      "system.serial": "None",
                      "system.vendor": "No Enclosure"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P017700000_webhosting",
                      "dt.cost.product": "webhosting_production"
                    },
                    "host.logical.cpus": "4",
                    "host.mac": [
                      "00:50:56:85:FA:39",
                      "00:50:56:85:BE:A9"
                    ],
                    "host.physical.memory": "83870945280",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-C8BC3C28D5E0C391",
                    "id_classic": "HOST-C8BC3C28D5E0C391",
                    "lifetime": {
                      "end": "2026-03-03T08:59:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "83870945280",
                    "name": "2217WWTC08.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux 8.10 (Ootpa) (kernel 4.18.0-553.107.1.el8_10.x86_64)",
                    "tags:environment": {
                      "dt.cost.costcenter": "P017700000_webhosting",
                      "dt.cost.product": "webhosting_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "12",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "12",
                    "host.mac": [
                      "00:50:56:85:91:1B"
                    ],
                    "host.physical.memory": "141733314560",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-DCA8FBC6235A6CE5",
                    "id_classic": "HOST-DCA8FBC6235A6CE5",
                    "lifetime": {
                      "end": "2026-03-03T08:59:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "141733314560",
                    "name": "2217asecmcsb1p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:86:DC"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-E90384BEDD72316A",
                    "id_classic": "HOST-E90384BEDD72316A",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217asecmcsf2p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "4",
                    "host.mac": [
                      "00:50:56:85:AD:35"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-FA4013A0656EBAD0",
                    "id_classic": "HOST-FA4013A0656EBAD0",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2217asecmdp.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "type": "HOST"
                  },
                  {
                    "aws.account.id": "565198685549",
                    "aws.arn": "arn:aws:ec2:eu-central-1:565198685549:instance/i-027e6e51ec31f1477",
                    "aws.availability_zone": "eu-central-1a",
                    "aws.region": "eu-central-1",
                    "aws.resource.id": "i-027e6e51ec31f1477",
                    "cloud.provider": "aws",
                    "cores": "1",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.vendor": "Amazon EC2",
                      "system.memory.size": "7970623488",
                      "system.model": "t3a.large",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "AMD EPYC 7571",
                      "system.vendor": "Amazon EC2"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "2",
                    "host.mac": [
                      "02:A3:69:2E:4B:6A"
                    ],
                    "host.physical.memory": "7970623488",
                    "hypervisor.type": "HYPERVISOR_TYPE_AWS_NITRO",
                    "id": "HOST-17236FB4AA53B7FE",
                    "id_classic": "HOST-17236FB4AA53B7FE",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "7970623488",
                    "name": "2217htmg0469p01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux 9.7 (Plow) (kernel 5.14.0-611.8.1.el9_7.x86_64)",
                    "private_dns_name": "ip-10-147-148-38.voestalpine.root.local",
                    "private_ip_address": [
                      "10.147.148.38"
                    ],
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:CB:7B"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-18293E2C2566BC1D",
                    "id_classic": "HOST-18293E2C2566BC1D",
                    "lifetime": {
                      "end": "2026-03-03T08:59:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmds1p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:A9:A6"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-280962E09A43F01D",
                    "id_classic": "HOST-280962E09A43F01D",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217psm0010p12.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "PAM_WindowsPatchgroup": "even",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "aws.account.id": "565198685549",
                    "aws.arn": "arn:aws:ec2:eu-central-1:565198685549:instance/i-0574d91828b69b0f0",
                    "aws.availability_zone": "eu-central-1b",
                    "aws.region": "eu-central-1",
                    "aws.resource.id": "i-0574d91828b69b0f0",
                    "cloud.provider": "aws",
                    "cores": "1",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.vendor": "Amazon EC2",
                      "system.memory.size": "7970631680",
                      "system.model": "t3a.large",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "AMD EPYC 7571",
                      "system.vendor": "Amazon EC2"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "2",
                    "host.mac": [
                      "06:59:D0:EF:6D:6E"
                    ],
                    "host.physical.memory": "7970631680",
                    "hypervisor.type": "HYPERVISOR_TYPE_AWS_NITRO",
                    "id": "HOST-2C4A33F1CACE2727",
                    "id_classic": "HOST-2C4A33F1CACE2727",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "7970631680",
                    "name": "2217htmg0469p02.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux 9.7 (Plow) (kernel 5.14.0-611.8.1.el9_7.x86_64)",
                    "private_dns_name": "ip-10-147-149-38.voestalpine.root.local",
                    "private_ip_address": [
                      "10.147.149.38"
                    ],
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "16",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "16",
                    "host.mac": [
                      "00:50:56:85:6C:54"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-2E1E5993E8E82C23",
                    "id_classic": "HOST-2E1E5993E8E82C23",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2236asecmasp.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:FD:6B"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-3565708D47127D40",
                    "id_classic": "HOST-3565708D47127D40",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217psm0010p11.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:DA:5B"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-3E0636ED51454587",
                    "id_classic": "HOST-3E0636ED51454587",
                    "lifetime": {
                      "end": "2026-03-03T08:54:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217asecmcsf5p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "type": "HOST"
                  },
                  {
                    "cores": "16",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "16",
                    "host.mac": [
                      "00:50:56:85:BE:0F"
                    ],
                    "host.physical.memory": "38654099456",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-590FBA98DC044D15",
                    "id_classic": "HOST-590FBA98DC044D15",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "38654099456",
                    "name": "2217psm0010p05.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "24",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [
                      "Database"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.model": "ProLiant DL380 Gen10",
                      "system.board.serial": "PXLAL0HLMFO1HO",
                      "system.board.vendor": "HPE",
                      "system.memory.size": "1099163344896",
                      "system.model": "ProLiant DL380 Gen10",
                      "system.processor[0].cache.l2.size": "12582912",
                      "system.processor[0].cache.l3.size": "34603008",
                      "system.processor[0].cores.physical": "12",
                      "system.processor[0].cores.virtual": "24",
                      "system.processor[0].frequency.max": "4000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "Intel(R) Xeon(R) Gold 6256 CPU @ 3.60GHz",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Intel(R) Corporation",
                      "system.processor[1].cache.l2.size": "12582912",
                      "system.processor[1].cache.l3.size": "34603008",
                      "system.processor[1].cores.physical": "12",
                      "system.processor[1].cores.virtual": "24",
                      "system.processor[1].frequency.max": "4000000000",
                      "system.processor[1].id": "CPU1",
                      "system.processor[1].model": "Intel(R) Xeon(R) Gold 6256 CPU @ 3.60GHz",
                      "system.processor[1].role": "Central Processor",
                      "system.processor[1].status": "OK",
                      "system.processor[1].vendor": "Intel(R) Corporation",
                      "system.vendor": "HPE"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "48",
                    "host.mac": [
                      "5C:BA:2C:92:24:F0",
                      "5C:BA:2C:92:24:F8",
                      "D4:F5:EF:56:7A:88"
                    ],
                    "host.physical.memory": "1099163344896",
                    "id": "HOST-5B144D92C902184E",
                    "id_classic": "HOST-5B144D92C902184E",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "1099163344896",
                    "name": "2217dbxecmn01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.owner": "Database"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "32",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "32",
                    "host.mac": [
                      "00:50:56:85:E1:A5"
                    ],
                    "host.physical.memory": "42949066752",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-72E43AAACC9059B9",
                    "id_classic": "HOST-72E43AAACC9059B9",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "42949066752",
                    "name": "2217psm0010p04.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "PAM_WindowsPatchgroup": "even",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "32",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "32",
                    "host.mac": [
                      "00:50:56:85:1A:7D"
                    ],
                    "host.physical.memory": "42949066752",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-749DBF577FB57CD4",
                    "id_classic": "HOST-749DBF577FB57CD4",
                    "lifetime": {
                      "end": "2026-03-03T08:54:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "42949066752",
                    "name": "2217psm0010p01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "32",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "32",
                    "host.mac": [
                      "00:50:56:85:E9:F1"
                    ],
                    "host.physical.memory": "42949066752",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-78D9080824662889",
                    "id_classic": "HOST-78D9080824662889",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "42949066752",
                    "name": "2217psm0010p03.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:83:42"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-7C9AD5C259019D64",
                    "id_classic": "HOST-7C9AD5C259019D64",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217asixos01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:3E:5F"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-861F29D4AF5BF4F2",
                    "id_classic": "HOST-861F29D4AF5BF4F2",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2217asecmds1p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:32:C5"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-8DFA23544E33506F",
                    "id_classic": "HOST-8DFA23544E33506F",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmblzp.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:95:62"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-8F4027A1ADC95369",
                    "id_classic": "HOST-8F4027A1ADC95369",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217asecmcsf1p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:58:4F"
                    ],
                    "host.physical.memory": "68718870528",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-B6160E5D2C2AC281",
                    "id_classic": "HOST-B6160E5D2C2AC281",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "68718870528",
                    "name": "2236asecmcsb2p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [
                      "xECM_P"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.model": "440BX Desktop Reference Platform",
                      "system.board.serial": "None",
                      "system.board.vendor": "Intel Corporation",
                      "system.memory.size": "8589398016",
                      "system.model": "VMware Virtual Platform",
                      "system.processor[0].cache.l2.size": "0",
                      "system.processor[0].cache.l3.size": "0",
                      "system.processor[0].cores.physical": "2",
                      "system.processor[0].cores.virtual": "0",
                      "system.processor[0].frequency.max": "30000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "GenuineIntel",
                      "system.processor[1].cache.l2.size": "0",
                      "system.processor[1].cache.l3.size": "0",
                      "system.processor[1].cores.physical": "2",
                      "system.processor[1].cores.virtual": "0",
                      "system.processor[1].frequency.max": "30000000000",
                      "system.processor[1].id": "CPU1",
                      "system.processor[1].model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.processor[1].role": "Central Processor",
                      "system.processor[1].status": "OK",
                      "system.processor[1].vendor": "GenuineIntel",
                      "system.processor[2].cache.l2.size": "0",
                      "system.processor[2].cache.l3.size": "0",
                      "system.processor[2].cores.physical": "2",
                      "system.processor[2].cores.virtual": "0",
                      "system.processor[2].frequency.max": "30000000000",
                      "system.processor[2].id": "CPU2",
                      "system.processor[2].model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.processor[2].role": "Central Processor",
                      "system.processor[2].status": "OK",
                      "system.processor[2].vendor": "GenuineIntel",
                      "system.processor[3].cache.l2.size": "0",
                      "system.processor[3].cache.l3.size": "0",
                      "system.processor[3].cores.physical": "2",
                      "system.processor[3].cores.virtual": "0",
                      "system.processor[3].frequency.max": "30000000000",
                      "system.processor[3].id": "CPU3",
                      "system.processor[3].model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.processor[3].role": "Central Processor",
                      "system.processor[3].status": "OK",
                      "system.processor[3].vendor": "GenuineIntel",
                      "system.vendor": "VMware, Inc."
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "4",
                    "host.mac": [
                      "00:50:56:85:16:32"
                    ],
                    "host.physical.memory": "8589398016",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-BE1FFB89AC1B2202",
                    "id_classic": "HOST-BE1FFB89AC1B2202",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "8589398016",
                    "name": "2236asmgnt02.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "36",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.host_group.id": "Bee4IT",
                    "dt.security_context": [
                      "Database"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.model": "ProLiant DL380 Gen10",
                      "system.board.serial": "PXLAL0ELMEQ0KP",
                      "system.board.vendor": "HPE",
                      "system.memory.size": "1648899076096",
                      "system.model": "ProLiant DL380 Gen10",
                      "system.processor[0].cache.l2.size": "18874368",
                      "system.processor[0].cache.l3.size": "25952256",
                      "system.processor[0].cores.physical": "18",
                      "system.processor[0].cores.virtual": "36",
                      "system.processor[0].frequency.max": "4000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "Intel(R) Xeon(R) Gold 6254 CPU @ 3.10GHz",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Intel(R) Corporation",
                      "system.processor[1].cache.l2.size": "18874368",
                      "system.processor[1].cache.l3.size": "25952256",
                      "system.processor[1].cores.physical": "18",
                      "system.processor[1].cores.virtual": "36",
                      "system.processor[1].frequency.max": "4000000000",
                      "system.processor[1].id": "CPU1",
                      "system.processor[1].model": "Intel(R) Xeon(R) Gold 6254 CPU @ 3.10GHz",
                      "system.processor[1].role": "Central Processor",
                      "system.processor[1].status": "OK",
                      "system.processor[1].vendor": "Intel(R) Corporation",
                      "system.vendor": "HPE"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P223100000_bee4it",
                      "dt.cost.product": "bee4it_production",
                      "dt.security_context": "Database"
                    },
                    "host.logical.cpus": "72",
                    "host.mac": [
                      "5C:BA:2C:61:CF:E0",
                      "5C:BA:2C:61:CF:E8",
                      "D4:F5:EF:2D:38:B0"
                    ],
                    "host.physical.memory": "1648899076096",
                    "id": "HOST-C16793303764302D",
                    "id_classic": "HOST-C16793303764302D",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "1648899076096",
                    "name": "2217DBSQLCLN02.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "dt.cost.costcenter": "P223100000_bee4it",
                      "dt.cost.product": "bee4it_production",
                      "dt.owner": "Database"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:60:28"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-D99903D58C348261",
                    "id_classic": "HOST-D99903D58C348261",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2217psm0010p07.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:74:69"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-DF1BC83C6F109665",
                    "id_classic": "HOST-DF1BC83C6F109665",
                    "lifetime": {
                      "end": "2026-03-03T08:59:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmcsf2p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "24",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "24",
                    "host.mac": [
                      "00:50:56:85:6D:87"
                    ],
                    "host.physical.memory": "137438347264",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-E35D35EA4ACC0205",
                    "id_classic": "HOST-E35D35EA4ACC0205",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "137438347264",
                    "name": "2236asecmcsb3p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "aws.account.id": "565198685549",
                    "aws.arn": "arn:aws:ec2:ap-southeast-1:565198685549:instance/i-0bb93a6e999bbe53e",
                    "aws.availability_zone": "ap-southeast-1a",
                    "aws.region": "ap-southeast-1",
                    "aws.resource.id": "i-0bb93a6e999bbe53e",
                    "cloud.provider": "aws",
                    "cores": "4",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.vendor": "Amazon EC2",
                      "system.memory.size": "33983848448",
                      "system.model": "t3.2xlarge",
                      "system.processor[0].cache.l2.size": "25165824",
                      "system.processor[0].cache.l3.size": "2184970240",
                      "system.processor[0].cores.physical": "4",
                      "system.processor[0].cores.virtual": "8",
                      "system.processor[0].frequency.max": "3500000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "Intel(R) Xeon(R) Platinum 8259CL CPU @ 2.50GHz",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Intel(R) Corporation",
                      "system.vendor": "Amazon EC2"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "02:27:63:3A:A3:CF"
                    ],
                    "host.physical.memory": "33983848448",
                    "hypervisor.type": "HYPERVISOR_TYPE_AWS_NITRO",
                    "id": "HOST-ECA5AA097ACC20C5",
                    "id_classic": "HOST-ECA5AA097ACC20C5",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "33983848448",
                    "name": "2217PSM0468P01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Datacenter 21H2 2009, ver. 10.0.20348",
                    "private_dns_name": "ip-10-148-65-104.voestalpine.root.local",
                    "private_ip_address": [
                      "10.148.65.104"
                    ],
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "16",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "16",
                    "host.mac": [
                      "00:50:56:85:68:03"
                    ],
                    "host.physical.memory": "107373576192",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-F6F1B7F770E87E4A",
                    "id_classic": "HOST-F6F1B7F770E87E4A",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "107373576192",
                    "name": "2236asecmcsb4p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:9C:5A"
                    ],
                    "host.physical.memory": "68718870528",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-047CA01BFA02FE0F",
                    "id_classic": "HOST-047CA01BFA02FE0F",
                    "lifetime": {
                      "end": "2026-03-03T08:54:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "68718870528",
                    "name": "2217asecmcsb2p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:8E:CD"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-0C1384E1E6716F46",
                    "id_classic": "HOST-0C1384E1E6716F46",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2217psm0010p08.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "PAM_WindowsPatchgroup": "even",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "12",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "12",
                    "host.mac": [
                      "00:50:56:85:A2:B3"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-1C0B31FCA725A33D",
                    "id_classic": "HOST-1C0B31FCA725A33D",
                    "lifetime": {
                      "end": "2026-03-03T08:59:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2217asecmbravp.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:85:C6"
                    ],
                    "host.physical.memory": "17179262976",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-205376DB8365DA2D",
                    "id_classic": "HOST-205376DB8365DA2D",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "17179262976",
                    "name": "2217asecmds2p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:0C:CE"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-3C172C4602EBA72A",
                    "id_classic": "HOST-3C172C4602EBA72A",
                    "lifetime": {
                      "end": "2026-03-03T08:59:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmawgp.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "36",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.host_group.id": "Bee4IT",
                    "dt.security_context": [
                      "Database"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.model": "ProLiant DL380 Gen10",
                      "system.board.serial": "PXLAL0ELMEO06Y",
                      "system.board.vendor": "HPE",
                      "system.memory.size": "1648907464704",
                      "system.model": "ProLiant DL380 Gen10",
                      "system.processor[0].cache.l2.size": "18874368",
                      "system.processor[0].cache.l3.size": "25952256",
                      "system.processor[0].cores.physical": "18",
                      "system.processor[0].cores.virtual": "36",
                      "system.processor[0].frequency.max": "4000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "Intel(R) Xeon(R) Gold 6254 CPU @ 3.10GHz",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Intel(R) Corporation",
                      "system.processor[1].cache.l2.size": "18874368",
                      "system.processor[1].cache.l3.size": "25952256",
                      "system.processor[1].cores.physical": "18",
                      "system.processor[1].cores.virtual": "36",
                      "system.processor[1].frequency.max": "4000000000",
                      "system.processor[1].id": "CPU1",
                      "system.processor[1].model": "Intel(R) Xeon(R) Gold 6254 CPU @ 3.10GHz",
                      "system.processor[1].role": "Central Processor",
                      "system.processor[1].status": "OK",
                      "system.processor[1].vendor": "Intel(R) Corporation",
                      "system.vendor": "HPE"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P223100000_bee4it",
                      "dt.cost.product": "bee4it_production",
                      "dt.security_context": "Database"
                    },
                    "host.logical.cpus": "72",
                    "host.mac": [
                      "5C:BA:2C:1A:44:20",
                      "5C:BA:2C:1A:44:28",
                      "D4:F5:EF:25:88:E8"
                    ],
                    "host.physical.memory": "1648907464704",
                    "id": "HOST-46C5336F4E641280",
                    "id_classic": "HOST-46C5336F4E641280",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "1648907464704",
                    "name": "2217DBSQLCLN01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "dt.cost.costcenter": "P223100000_bee4it",
                      "dt.cost.product": "bee4it_production",
                      "dt.owner": "Database"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "24",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "24",
                    "host.mac": [
                      "00:50:56:85:3B:E6"
                    ],
                    "host.physical.memory": "141733314560",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-48D8D0E1FD5ADEE0",
                    "id_classic": "HOST-48D8D0E1FD5ADEE0",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "141733314560",
                    "name": "2236asecmcsb1p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "Technology": "IIS",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:63:15"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-64D980053A652A7C",
                    "id_classic": "HOST-64D980053A652A7C",
                    "lifetime": {
                      "end": "2026-03-03T08:54:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2236asecmds2p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production",
                      "dt.owner": "xECM"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.serial": "None",
                      "system.board.vendor": "Intel Corporation",
                      "system.memory.size": "16493731840",
                      "system.model": "VMware Virtual Platform",
                      "system.processor.frequency.max": "0",
                      "system.processor.frequency.min": "0",
                      "system.processor.model": "Intel(R) Xeon(R) Gold 6150 CPU @ 2.70GHz",
                      "system.serial": "None",
                      "system.vendor": "No Enclosure"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:0E:A6"
                    ],
                    "host.physical.memory": "16493731840",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-71B241CBCAEF6EE2",
                    "id_classic": "HOST-71B241CBCAEF6EE2",
                    "lifetime": {
                      "end": "2026-03-03T08:59:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "16493731840",
                    "name": "2217PSMP0010P02.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_LINUX",
                    "os.version": "Red Hat Enterprise Linux 8.10 (Ootpa) (kernel 4.18.0-553.84.1.el8_10.x86_64)",
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:82:F2"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-7655ECDA99952C41",
                    "id_classic": "HOST-7655ECDA99952C41",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217asecmcsf4p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "aws.account.id": "565198685549",
                    "aws.arn": "arn:aws:ec2:us-east-2:565198685549:instance/i-0f42d26527246a4b8",
                    "aws.availability_zone": "us-east-2c",
                    "aws.region": "us-east-2",
                    "aws.resource.id": "i-0f42d26527246a4b8",
                    "cloud.provider": "aws",
                    "cores": "4",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.vendor": "Amazon EC2",
                      "system.memory.size": "34074025984",
                      "system.model": "t3a.2xlarge",
                      "system.processor[0].cache.l2.size": "16777216",
                      "system.processor[0].cache.l3.size": "2214592512",
                      "system.processor[0].cores.physical": "4",
                      "system.processor[0].cores.virtual": "8",
                      "system.processor[0].frequency.max": "3000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "AMD EPYC 7571",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Advanced Micro Devices, Inc.",
                      "system.vendor": "Amazon EC2"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "0A:4F:57:7F:D2:23"
                    ],
                    "host.physical.memory": "34074025984",
                    "hypervisor.type": "HYPERVISOR_TYPE_AWS_NITRO",
                    "id": "HOST-819525E7E9A6D71F",
                    "id_classic": "HOST-819525E7E9A6D71F",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34074025984",
                    "name": "2217PSM0467p01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Datacenter 21H2 2009, ver. 10.0.20348",
                    "private_dns_name": "ip-10-139-211-237.voestalpine.root.local",
                    "private_ip_address": [
                      "10.139.211.237"
                    ],
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "16",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.security_context": "PAM"
                    },
                    "host.logical.cpus": "16",
                    "host.mac": [
                      "00:50:56:85:B9:78"
                    ],
                    "host.physical.memory": "38654099456",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-91D52EF0321D54B9",
                    "id_classic": "HOST-91D52EF0321D54B9",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "38654099456",
                    "name": "2217psm0010p06.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "PAM_WindowsPatchgroup": "even"
                    },
                    "type": "HOST"
                  },
                  {
                    "aws.account.id": "565198685549",
                    "aws.arn": "arn:aws:ec2:eu-central-1:565198685549:instance/i-0697149a25b43f19f",
                    "aws.availability_zone": "eu-central-1b",
                    "aws.region": "eu-central-1",
                    "aws.resource.id": "i-0697149a25b43f19f",
                    "cloud.provider": "aws",
                    "cores": "4",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.vendor": "Amazon EC2",
                      "system.memory.size": "34074025984",
                      "system.model": "t3a.2xlarge",
                      "system.processor[0].cache.l2.size": "16777216",
                      "system.processor[0].cache.l3.size": "2214592512",
                      "system.processor[0].cores.physical": "4",
                      "system.processor[0].cores.virtual": "8",
                      "system.processor[0].frequency.max": "3000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "AMD EPYC 7571",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Advanced Micro Devices, Inc.",
                      "system.vendor": "Amazon EC2"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "06:E8:EA:37:F8:C4"
                    ],
                    "host.physical.memory": "34074025984",
                    "hypervisor.type": "HYPERVISOR_TYPE_AWS_NITRO",
                    "id": "HOST-9DB0A2461301B6C2",
                    "id_classic": "HOST-9DB0A2461301B6C2",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34074025984",
                    "name": "2217pvwa0469p02.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "private_dns_name": "ip-10-147-149-37.voestalpine.root.local",
                    "private_ip_address": [
                      "10.147.149.37"
                    ],
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "PAM_WindowsPatchgroup": "even"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:00:CD"
                    ],
                    "host.physical.memory": "34359132160",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-A30840CD76A19D68",
                    "id_classic": "HOST-A30840CD76A19D68",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "34359132160",
                    "name": "2217asecmcsf3p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "4",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "4",
                    "host.mac": [
                      "00:50:56:85:74:B8"
                    ],
                    "host.physical.memory": "8589328384",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-AAF31334B909F6C3",
                    "id_classic": "HOST-AAF31334B909F6C3",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "8589328384",
                    "name": "2217asecmblz.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "type": "HOST"
                  },
                  {
                    "cores": "32",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "32",
                    "host.mac": [
                      "00:50:56:85:C7:82"
                    ],
                    "host.physical.memory": "42949066752",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-C9B7467795DA185C",
                    "id_classic": "HOST-C9B7467795DA185C",
                    "lifetime": {
                      "end": "2026-03-03T08:58:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "42949066752",
                    "name": "2217psm0010p02.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Loadbalancer": "Region2",
                      "PAM_WindowsPatchgroup": "even",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "8",
                    "dt.cost.costcenter": "P028700000_xecm_corp",
                    "dt.cost.product": "xecm_production",
                    "dt.host_group.id": "xECM_Corp",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P028700000_xecm_corp",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "00:50:56:85:56:A5"
                    ],
                    "host.physical.memory": "73013837824",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-CA848C19059D5B45",
                    "id_classic": "HOST-CA848C19059D5B45",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-28T10:05:00.000000000+01:00"
                    },
                    "memory": "73013837824",
                    "name": "2217asecmcsb4p.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2022 Standard 21H2 2009, ver. 10.0.20348",
                    "type": "HOST"
                  },
                  {
                    "aws.account.id": "565198685549",
                    "aws.arn": "arn:aws:ec2:eu-central-1:565198685549:instance/i-02412e4ea37e2097d",
                    "aws.availability_zone": "eu-central-1a",
                    "aws.region": "eu-central-1",
                    "aws.resource.id": "i-02412e4ea37e2097d",
                    "cloud.provider": "aws",
                    "cores": "4",
                    "dt.cost.costcenter": "P221000000_pam",
                    "dt.cost.product": "pam_production",
                    "dt.host_group.id": "PAM",
                    "dt.security_context": [
                      "PAM"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.vendor": "Amazon EC2",
                      "system.memory.size": "34074025984",
                      "system.model": "t3a.2xlarge",
                      "system.processor[0].cache.l2.size": "16777216",
                      "system.processor[0].cache.l3.size": "2214592512",
                      "system.processor[0].cores.physical": "4",
                      "system.processor[0].cores.virtual": "8",
                      "system.processor[0].frequency.max": "3000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "AMD EPYC 7571",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Advanced Micro Devices, Inc.",
                      "system.vendor": "Amazon EC2"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "host.logical.cpus": "8",
                    "host.mac": [
                      "02:9B:33:A2:A1:9E"
                    ],
                    "host.physical.memory": "34074025984",
                    "hypervisor.type": "HYPERVISOR_TYPE_AWS_NITRO",
                    "id": "HOST-D2574E2AD91F2AA9",
                    "id_classic": "HOST-D2574E2AD91F2AA9",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "34074025984",
                    "name": "2217pvwa0469p01.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "private_dns_name": "ip-10-147-148-37.voestalpine.root.local",
                    "private_ip_address": [
                      "10.147.148.37"
                    ],
                    "tags:environment": {
                      "Loadbalancer": "Region1",
                      "PAM_WindowsPatchgroup": "odd",
                      "dt.cost.costcenter": "P221000000_pam",
                      "dt.cost.product": "pam_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "2",
                    "dt.cost.costcenter": "pcd_pw_portal",
                    "dt.cost.product": "pcd_pw_portal_production",
                    "dt.host_group.id": "PCD_PW_Portal",
                    "dt.security_context": [],
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "pcd_pw_portal",
                      "dt.cost.product": "pcd_pw_portal_production"
                    },
                    "host.logical.cpus": "2",
                    "host.mac": [
                      "00:50:56:85:E2:91"
                    ],
                    "host.physical.memory": "4294361088",
                    "hypervisor.type": "HYPERVISOR_TYPE_VMWARE",
                    "id": "HOST-E37D48DB6FC826CC",
                    "id_classic": "HOST-E37D48DB6FC826CC",
                    "lifetime": {
                      "end": "2026-03-03T08:55:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "4294361088",
                    "name": "2217aspwdrst.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2016 Standard 1607, ver. 10.0.14393",
                    "tags:environment": {
                      "dt.cost.costcenter": "pcd_pw_portal",
                      "dt.cost.product": "pcd_pw_portal_production"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "24",
                    "dt.host_group.id": "xECM_P",
                    "dt.security_context": [
                      "Database"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.model": "ProLiant DL380 Gen10",
                      "system.board.serial": "PXLAL0HLMFO1IE",
                      "system.board.vendor": "HPE",
                      "system.memory.size": "1099163357184",
                      "system.model": "ProLiant DL380 Gen10",
                      "system.processor[0].cache.l2.size": "12582912",
                      "system.processor[0].cache.l3.size": "34603008",
                      "system.processor[0].cores.physical": "12",
                      "system.processor[0].cores.virtual": "24",
                      "system.processor[0].frequency.max": "4000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "Intel(R) Xeon(R) Gold 6256 CPU @ 3.60GHz",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Intel(R) Corporation",
                      "system.processor[1].cache.l2.size": "12582912",
                      "system.processor[1].cache.l3.size": "34603008",
                      "system.processor[1].cores.physical": "12",
                      "system.processor[1].cores.virtual": "24",
                      "system.processor[1].frequency.max": "4000000000",
                      "system.processor[1].id": "CPU1",
                      "system.processor[1].model": "Intel(R) Xeon(R) Gold 6256 CPU @ 3.60GHz",
                      "system.processor[1].role": "Central Processor",
                      "system.processor[1].status": "OK",
                      "system.processor[1].vendor": "Intel(R) Corporation",
                      "system.vendor": "HPE"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.cost.product": "xecm_production"
                    },
                    "host.logical.cpus": "48",
                    "host.mac": [
                      "5C:BA:2C:61:BC:80",
                      "5C:BA:2C:61:BC:88",
                      "D4:F5:EF:56:7A:B8"
                    ],
                    "host.physical.memory": "1099163357184",
                    "id": "HOST-E606C497EB1200CA",
                    "id_classic": "HOST-E606C497EB1200CA",
                    "lifetime": {
                      "end": "2026-03-03T08:56:00.000000000+01:00",
                      "start": "2026-01-13T09:23:00.000000000+01:00"
                    },
                    "memory": "1099163357184",
                    "name": "2217dbxecmn02.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "Application": "xECM_Steel",
                      "dt.cost.costcenter": "P024400000_xecm_steel",
                      "dt.owner": "Database"
                    },
                    "type": "HOST"
                  },
                  {
                    "cores": "36",
                    "dt.cost.costcenter": "P223100000_bee4it",
                    "dt.cost.product": "bee4it_production",
                    "dt.host_group.id": "Bee4IT",
                    "dt.security_context": [
                      "Database"
                    ],
                    "host.additional_system_info": {
                      "system.architecture": "x86",
                      "system.board.model": "ProLiant DL380 Gen10",
                      "system.board.serial": "PXLAL0MLMGC0PW",
                      "system.board.vendor": "HPE",
                      "system.memory.size": "1648907464704",
                      "system.model": "ProLiant DL380 Gen10",
                      "system.processor[0].cache.l2.size": "18874368",
                      "system.processor[0].cache.l3.size": "25952256",
                      "system.processor[0].cores.physical": "18",
                      "system.processor[0].cores.virtual": "36",
                      "system.processor[0].frequency.max": "4000000000",
                      "system.processor[0].id": "CPU0",
                      "system.processor[0].model": "Intel(R) Xeon(R) Gold 6254 CPU @ 3.10GHz",
                      "system.processor[0].role": "Central Processor",
                      "system.processor[0].status": "OK",
                      "system.processor[0].vendor": "Intel(R) Corporation",
                      "system.processor[1].cache.l2.size": "18874368",
                      "system.processor[1].cache.l3.size": "25952256",
                      "system.processor[1].cores.physical": "18",
                      "system.processor[1].cores.virtual": "36",
                      "system.processor[1].frequency.max": "4000000000",
                      "system.processor[1].id": "CPU1",
                      "system.processor[1].model": "Intel(R) Xeon(R) Gold 6254 CPU @ 3.10GHz",
                      "system.processor[1].role": "Central Processor",
                      "system.processor[1].status": "OK",
                      "system.processor[1].vendor": "Intel(R) Corporation",
                      "system.vendor": "HPE"
                    },
                    "host.custom.metadata": {
                      "dt.cost.costcenter": "P223100000_bee4it",
                      "dt.cost.product": "bee4it_production",
                      "dt.security_context": "Database"
                    },
                    "host.logical.cpus": "72",
                    "host.mac": [
                      "5C:BA:2C:92:12:80",
                      "5C:BA:2C:92:12:88",
                      "D4:F5:EF:2E:99:58"
                    ],
                    "host.physical.memory": "1648907464704",
                    "id": "HOST-EFD88A91BFA12D4E",
                    "id_classic": "HOST-EFD88A91BFA12D4E",
                    "lifetime": {
                      "end": "2026-03-03T08:57:00.000000000+01:00",
                      "start": "2026-01-13T09:22:00.000000000+01:00"
                    },
                    "memory": "1648907464704",
                    "name": "2217DBSQLCLN03.voestalpine.root.local",
                    "os.architecture": "x86",
                    "os.type": "OS_TYPE_WINDOWS",
                    "os.version": "Windows Server 2019 Standard 1809, ver. 10.0.17763",
                    "tags:environment": {
                      "dt.cost.costcenter": "P223100000_bee4it",
                      "dt.cost.product": "bee4it_production",
                      "dt.owner": "Database"
                    },
                    "type": "HOST"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      1,
                      1
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.serial": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      2,
                      2
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      3,
                      4
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      5,
                      5
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      6,
                      6
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      7,
                      7
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      8,
                      8
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      9,
                      10
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      11,
                      11
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.serial": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              1
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      12,
                      14
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      15,
                      15
                    ],
                    "mappings": {
                      "aws.account.id": {
                        "type": "string"
                      },
                      "aws.arn": {
                        "type": "string"
                      },
                      "aws.availability_zone": {
                        "type": "string"
                      },
                      "aws.region": {
                        "type": "string"
                      },
                      "aws.resource.id": {
                        "type": "string"
                      },
                      "cloud.provider": {
                        "type": "string"
                      },
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "private_dns_name": {
                        "type": "string"
                      },
                      "private_ip_address": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      16,
                      16
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      17,
                      17
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      18,
                      18
                    ],
                    "mappings": {
                      "aws.account.id": {
                        "type": "string"
                      },
                      "aws.arn": {
                        "type": "string"
                      },
                      "aws.availability_zone": {
                        "type": "string"
                      },
                      "aws.region": {
                        "type": "string"
                      },
                      "aws.resource.id": {
                        "type": "string"
                      },
                      "cloud.provider": {
                        "type": "string"
                      },
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "private_dns_name": {
                        "type": "string"
                      },
                      "private_ip_address": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      19,
                      19
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      20,
                      20
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      21,
                      21
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      22,
                      22
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      23,
                      23
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.model": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[1].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[1].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[1].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[1].id": {
                                "type": "string"
                              },
                              "system.processor[1].model": {
                                "type": "string"
                              },
                              "system.processor[1].role": {
                                "type": "string"
                              },
                              "system.processor[1].status": {
                                "type": "string"
                              },
                              "system.processor[1].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      24,
                      26
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      27,
                      28
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      29,
                      29
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      30,
                      30
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      31,
                      31
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      32,
                      32
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.model": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[1].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[1].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[1].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[1].id": {
                                "type": "string"
                              },
                              "system.processor[1].model": {
                                "type": "string"
                              },
                              "system.processor[1].role": {
                                "type": "string"
                              },
                              "system.processor[1].status": {
                                "type": "string"
                              },
                              "system.processor[1].vendor": {
                                "type": "string"
                              },
                              "system.processor[2].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[2].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[2].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[2].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[2].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[2].id": {
                                "type": "string"
                              },
                              "system.processor[2].model": {
                                "type": "string"
                              },
                              "system.processor[2].role": {
                                "type": "string"
                              },
                              "system.processor[2].status": {
                                "type": "string"
                              },
                              "system.processor[2].vendor": {
                                "type": "string"
                              },
                              "system.processor[3].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[3].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[3].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[3].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[3].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[3].id": {
                                "type": "string"
                              },
                              "system.processor[3].model": {
                                "type": "string"
                              },
                              "system.processor[3].role": {
                                "type": "string"
                              },
                              "system.processor[3].status": {
                                "type": "string"
                              },
                              "system.processor[3].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      33,
                      33
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.model": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[1].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[1].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[1].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[1].id": {
                                "type": "string"
                              },
                              "system.processor[1].model": {
                                "type": "string"
                              },
                              "system.processor[1].role": {
                                "type": "string"
                              },
                              "system.processor[1].status": {
                                "type": "string"
                              },
                              "system.processor[1].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      34,
                      34
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      35,
                      36
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      37,
                      37
                    ],
                    "mappings": {
                      "aws.account.id": {
                        "type": "string"
                      },
                      "aws.arn": {
                        "type": "string"
                      },
                      "aws.availability_zone": {
                        "type": "string"
                      },
                      "aws.region": {
                        "type": "string"
                      },
                      "aws.resource.id": {
                        "type": "string"
                      },
                      "cloud.provider": {
                        "type": "string"
                      },
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "private_dns_name": {
                        "type": "string"
                      },
                      "private_ip_address": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      38,
                      38
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      39,
                      39
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      40,
                      40
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      41,
                      42
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      43,
                      43
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      44,
                      44
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.model": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[1].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[1].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[1].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[1].id": {
                                "type": "string"
                              },
                              "system.processor[1].model": {
                                "type": "string"
                              },
                              "system.processor[1].role": {
                                "type": "string"
                              },
                              "system.processor[1].status": {
                                "type": "string"
                              },
                              "system.processor[1].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      45,
                      45
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "Technology": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      46,
                      46
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      47,
                      47
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor.frequency.max": {
                                "type": "string"
                              },
                              "system.processor.frequency.min": {
                                "type": "string"
                              },
                              "system.processor.model": {
                                "type": "string"
                              },
                              "system.serial": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      48,
                      48
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      49,
                      49
                    ],
                    "mappings": {
                      "aws.account.id": {
                        "type": "string"
                      },
                      "aws.arn": {
                        "type": "string"
                      },
                      "aws.availability_zone": {
                        "type": "string"
                      },
                      "aws.region": {
                        "type": "string"
                      },
                      "aws.resource.id": {
                        "type": "string"
                      },
                      "cloud.provider": {
                        "type": "string"
                      },
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "private_dns_name": {
                        "type": "string"
                      },
                      "private_ip_address": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      50,
                      50
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      51,
                      51
                    ],
                    "mappings": {
                      "aws.account.id": {
                        "type": "string"
                      },
                      "aws.arn": {
                        "type": "string"
                      },
                      "aws.availability_zone": {
                        "type": "string"
                      },
                      "aws.region": {
                        "type": "string"
                      },
                      "aws.resource.id": {
                        "type": "string"
                      },
                      "cloud.provider": {
                        "type": "string"
                      },
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "private_dns_name": {
                        "type": "string"
                      },
                      "private_ip_address": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      52,
                      53
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      54,
                      54
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      55,
                      55
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      56,
                      56
                    ],
                    "mappings": {
                      "aws.account.id": {
                        "type": "string"
                      },
                      "aws.arn": {
                        "type": "string"
                      },
                      "aws.availability_zone": {
                        "type": "string"
                      },
                      "aws.region": {
                        "type": "string"
                      },
                      "aws.resource.id": {
                        "type": "string"
                      },
                      "cloud.provider": {
                        "type": "string"
                      },
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "private_dns_name": {
                        "type": "string"
                      },
                      "private_ip_address": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Loadbalancer": {
                                "type": "string"
                              },
                              "PAM_WindowsPatchgroup": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      57,
                      57
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": []
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "hypervisor.type": {
                        "type": "string"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      58,
                      58
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.model": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[1].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[1].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[1].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[1].id": {
                                "type": "string"
                              },
                              "system.processor[1].model": {
                                "type": "string"
                              },
                              "system.processor[1].role": {
                                "type": "string"
                              },
                              "system.processor[1].status": {
                                "type": "string"
                              },
                              "system.processor[1].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "Application": {
                                "type": "string"
                              },
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      59,
                      59
                    ],
                    "mappings": {
                      "cores": {
                        "type": "long"
                      },
                      "dt.cost.costcenter": {
                        "type": "string"
                      },
                      "dt.cost.product": {
                        "type": "string"
                      },
                      "dt.host_group.id": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              0
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.additional_system_info": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "system.architecture": {
                                "type": "string"
                              },
                              "system.board.model": {
                                "type": "string"
                              },
                              "system.board.serial": {
                                "type": "string"
                              },
                              "system.board.vendor": {
                                "type": "string"
                              },
                              "system.memory.size": {
                                "type": "string"
                              },
                              "system.model": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[0].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[0].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[0].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[0].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[0].id": {
                                "type": "string"
                              },
                              "system.processor[0].model": {
                                "type": "string"
                              },
                              "system.processor[0].role": {
                                "type": "string"
                              },
                              "system.processor[0].status": {
                                "type": "string"
                              },
                              "system.processor[0].vendor": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l2.size": {
                                "type": "string"
                              },
                              "system.processor[1].cache.l3.size": {
                                "type": "string"
                              },
                              "system.processor[1].cores.physical": {
                                "type": "string"
                              },
                              "system.processor[1].cores.virtual": {
                                "type": "string"
                              },
                              "system.processor[1].frequency.max": {
                                "type": "string"
                              },
                              "system.processor[1].id": {
                                "type": "string"
                              },
                              "system.processor[1].model": {
                                "type": "string"
                              },
                              "system.processor[1].role": {
                                "type": "string"
                              },
                              "system.processor[1].status": {
                                "type": "string"
                              },
                              "system.processor[1].vendor": {
                                "type": "string"
                              },
                              "system.vendor": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.custom.metadata": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.security_context": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.logical.cpus": {
                        "type": "long"
                      },
                      "host.mac": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "host.physical.memory": {
                        "type": "long"
                      },
                      "id": {
                        "type": "smartscape_id"
                      },
                      "id_classic": {
                        "type": "string"
                      },
                      "lifetime": {
                        "type": "timeframe"
                      },
                      "memory": {
                        "type": "long"
                      },
                      "name": {
                        "type": "string"
                      },
                      "os.architecture": {
                        "type": "string"
                      },
                      "os.type": {
                        "type": "string"
                      },
                      "os.version": {
                        "type": "string"
                      },
                      "tags:environment": {
                        "type": "record",
                        "types": [
                          {
                            "mappings": {
                              "dt.cost.costcenter": {
                                "type": "string"
                              },
                              "dt.cost.product": {
                                "type": "string"
                              },
                              "dt.owner": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "type": {
                        "type": "string"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": true,
              "chartSettings": {},
              "table": {
                "hideColumnsForLargeResults": true
              }
            }
          },
          "type": "dql"
        }
      ],
      "version": "7"
    })
  private = true
}
