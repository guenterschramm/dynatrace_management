resource "dynatrace_document" "DQL_Builder_Validator" {
  name    = "DQL Builder & Validator"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": true,
      "layouts": {
        "0": {
          "h": 7,
          "w": 17,
          "x": 7,
          "y": 0
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "11": {
          "h": 9,
          "w": 13,
          "x": 11,
          "y": 26
        },
        "12": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "2": {
          "h": 9,
          "w": 11,
          "x": 0,
          "y": 26
        },
        "3": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "4": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "5": {
          "h": 7,
          "w": 7,
          "x": 0,
          "y": 0
        },
        "8": {
          "h": 8,
          "w": 7,
          "x": 0,
          "y": 13
        },
        "9": {
          "h": 8,
          "w": 17,
          "x": 7,
          "y": 13
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "input": "import { settingsObjectsClient } from \"@dynatrace-sdk/client-classic-environment-v2\";\nimport { monitoredEntitiesClient } from \"@dynatrace-sdk/client-classic-environment-v2\";\nimport { queryAssistanceClient } from '@dynatrace-sdk/client-query';\nimport { queryExecutionClient } from '@dynatrace-sdk/client-query';\n\nexport default async function () {\n  var entity =($data_object);\n  var fieldArray = $data_object_fields;\n  var newEntity = entity.includes(\":\") ? \"`\" + entity + \"`\" : entity\n  return(\n    \"fetch \" + newEntity +\", from:-24h\" +\n    \"\\n| fieldsAdd \" + fieldArray\n  );\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Preview of generated DQL Query 📝",
          "type": "code",
          "visualization": "raw",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "10": {
          "content": "---\n---\n---\n---\n\n\n---\n---\n---\n---",
          "type": "markdown"
        },
        "11": {
          "input": "import { queryAssistanceClient } from '@dynatrace-sdk/client-query';\nimport { queryExecutionClient } from '@dynatrace-sdk/client-query';\nexport default async function () {\n\n  var fieldArray = $data_object_fields;\n  var sep = \"(':')\";\n  const data = await  queryExecutionClient\n    .queryExecute({\n      body: {\n        query: $custom_dql_input,    \n          requestTimeoutMilliseconds: 30000,\n      }\n    }).then(({ result }) =\u003e result.records);\n  \n  return(data);\n  \n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Preview of your selected DQL 📋",
          "type": "code",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "entity.name",
                    "id",
                    "dt.system.table",
                    "dt.system.environment",
                    "lifetime",
                    "bitness",
                    "belongs_to",
                    "autoInjection",
                    "additionalSystemInfo",
                    "gcpZone",
                    "dnsNames",
                    "softwareTechnologies",
                    "gceProjectId",
                    "paasVendorType",
                    "customHostMetadata",
                    "installerPotentialProblem",
                    "state",
                    "zosVirtualization",
                    "customIconPath",
                    "entity.conditional_name",
                    "hosts",
                    "standalone",
                    "azureSku",
                    "gceHostName",
                    "hypervisorType",
                    "boshName",
                    "standaloneSpecialAgentsOnly",
                    "tags",
                    "contains",
                    "gcePublicIpAddresses",
                    "paasMemoryLimit",
                    "memoryTotal",
                    "boshDeploymentId",
                    "installerSupportAlert",
                    "gceMachineType",
                    "installerTrackedDownload",
                    "gceInstanceId",
                    "runs_on",
                    "kubernetesLabels",
                    "icon",
                    "logPathLastUpdate",
                    "monitored_by",
                    "osVersion",
                    "macAddresses",
                    "zosCPUModelNumber",
                    "azureSiteNames",
                    "azureZone",
                    "installerVersion",
                    "boshAvailabilityZone",
                    "azureResourceGroupName",
                    "calls",
                    "cloudPlatformVendorVersion",
                    "instance_of",
                    "zosTotalPhysicalMemory",
                    "simultaneousMultithreading",
                    "runs",
                    "azureHostNames",
                    "monitoringMode",
                    "ebpfHasPublicTraffic",
                    "azureVmScaleSetName",
                    "osArchitecture",
                    "logFileStatus",
                    "zosSystemName",
                    "boshInstanceId",
                    "boshStemcellVersion",
                    "kubernetesClusterName",
                    "cloudType",
                    "entity.detected_name",
                    "clustered_by",
                    "physicalMemory",
                    "hasPublicTraffic",
                    "ipAddress",
                    "called_by",
                    "virtualCpus",
                    "zosTotalZiipProcessors",
                    "logicalCpus",
                    "hostGroupName",
                    "networkZone",
                    "logicalCpuCores",
                    "isMonitoringCandidate",
                    "cpuCores",
                    "ebpfDiscoveryMonitored",
                    "azureComputeModeName",
                    "osServices",
                    "zosLparName",
                    "managementZones",
                    "entity.type",
                    "osType",
                    "azureVmSizeLabel",
                    "logSourceState",
                    "zosCPUSerialNumber",
                    "boshInstanceName",
                    "oneAgentCustomHostName",
                    "zosTotalGeneralPurposeProcessors",
                    "gceInstanceName",
                    "azureEnvironment",
                    "entity.customized_name",
                    "gceNumericProjectId",
                    "accessible_by",
                    "dt.security_context",
                    "awsNameTag"
                  ],
                  "id": 5474433.4,
                  "value": "log-content"
                }
              ],
              "columnWidths": {
                "[\"entity.name\"]": 317
              },
              "lineWrapIds": [
                [
                  "entity.name"
                ],
                [
                  "id"
                ],
                [
                  "dt.system.table"
                ],
                [
                  "dt.system.environment"
                ],
                [
                  "lifetime"
                ],
                [
                  "bitness"
                ],
                [
                  "belongs_to"
                ],
                [
                  "autoInjection"
                ],
                [
                  "additionalSystemInfo"
                ],
                [
                  "gcpZone"
                ],
                [
                  "dnsNames"
                ],
                [
                  "softwareTechnologies"
                ],
                [
                  "gceProjectId"
                ],
                [
                  "paasVendorType"
                ],
                [
                  "customHostMetadata"
                ],
                [
                  "installerPotentialProblem"
                ],
                [
                  "state"
                ],
                [
                  "zosVirtualization"
                ],
                [
                  "customIconPath"
                ],
                [
                  "entity.conditional_name"
                ],
                [
                  "hosts"
                ],
                [
                  "standalone"
                ],
                [
                  "azureSku"
                ],
                [
                  "gceHostName"
                ],
                [
                  "hypervisorType"
                ],
                [
                  "boshName"
                ],
                [
                  "standaloneSpecialAgentsOnly"
                ],
                [
                  "tags"
                ],
                [
                  "contains"
                ],
                [
                  "gcePublicIpAddresses"
                ],
                [
                  "paasMemoryLimit"
                ],
                [
                  "memoryTotal"
                ],
                [
                  "boshDeploymentId"
                ],
                [
                  "installerSupportAlert"
                ],
                [
                  "gceMachineType"
                ],
                [
                  "installerTrackedDownload"
                ],
                [
                  "gceInstanceId"
                ],
                [
                  "runs_on"
                ],
                [
                  "kubernetesLabels"
                ],
                [
                  "icon"
                ],
                [
                  "logPathLastUpdate"
                ],
                [
                  "monitored_by"
                ],
                [
                  "osVersion"
                ],
                [
                  "macAddresses"
                ],
                [
                  "zosCPUModelNumber"
                ],
                [
                  "azureSiteNames"
                ],
                [
                  "azureZone"
                ],
                [
                  "installerVersion"
                ],
                [
                  "boshAvailabilityZone"
                ],
                [
                  "azureResourceGroupName"
                ],
                [
                  "calls"
                ],
                [
                  "cloudPlatformVendorVersion"
                ],
                [
                  "instance_of"
                ],
                [
                  "zosTotalPhysicalMemory"
                ],
                [
                  "simultaneousMultithreading"
                ],
                [
                  "runs"
                ],
                [
                  "azureHostNames"
                ],
                [
                  "monitoringMode"
                ],
                [
                  "ebpfHasPublicTraffic"
                ],
                [
                  "azureVmScaleSetName"
                ],
                [
                  "osArchitecture"
                ],
                [
                  "logFileStatus"
                ],
                [
                  "zosSystemName"
                ],
                [
                  "boshInstanceId"
                ],
                [
                  "boshStemcellVersion"
                ],
                [
                  "kubernetesClusterName"
                ],
                [
                  "cloudType"
                ],
                [
                  "entity.detected_name"
                ],
                [
                  "clustered_by"
                ],
                [
                  "physicalMemory"
                ],
                [
                  "hasPublicTraffic"
                ],
                [
                  "ipAddress"
                ],
                [
                  "called_by"
                ],
                [
                  "virtualCpus"
                ],
                [
                  "zosTotalZiipProcessors"
                ],
                [
                  "logicalCpus"
                ],
                [
                  "hostGroupName"
                ],
                [
                  "networkZone"
                ],
                [
                  "logicalCpuCores"
                ],
                [
                  "isMonitoringCandidate"
                ],
                [
                  "cpuCores"
                ],
                [
                  "ebpfDiscoveryMonitored"
                ],
                [
                  "azureComputeModeName"
                ],
                [
                  "osServices"
                ],
                [
                  "zosLparName"
                ],
                [
                  "managementZones"
                ],
                [
                  "entity.type"
                ],
                [
                  "osType"
                ],
                [
                  "azureVmSizeLabel"
                ],
                [
                  "logSourceState"
                ],
                [
                  "zosCPUSerialNumber"
                ],
                [
                  "boshInstanceName"
                ],
                [
                  "oneAgentCustomHostName"
                ],
                [
                  "zosTotalGeneralPurposeProcessors"
                ],
                [
                  "gceInstanceName"
                ],
                [
                  "azureEnvironment"
                ],
                [
                  "entity.customized_name"
                ],
                [
                  "gceNumericProjectId"
                ],
                [
                  "accessible_by"
                ],
                [
                  "dt.security_context"
                ],
                [
                  "awsNameTag"
                ]
              ],
              "monospacedFontColumns": [
                [
                  "entity.name"
                ],
                [
                  "id"
                ],
                [
                  "dt.system.table"
                ],
                [
                  "dt.system.environment"
                ],
                [
                  "lifetime"
                ],
                [
                  "bitness"
                ],
                [
                  "belongs_to"
                ],
                [
                  "autoInjection"
                ],
                [
                  "additionalSystemInfo"
                ],
                [
                  "gcpZone"
                ],
                [
                  "dnsNames"
                ],
                [
                  "softwareTechnologies"
                ],
                [
                  "gceProjectId"
                ],
                [
                  "paasVendorType"
                ],
                [
                  "customHostMetadata"
                ],
                [
                  "installerPotentialProblem"
                ],
                [
                  "state"
                ],
                [
                  "zosVirtualization"
                ],
                [
                  "customIconPath"
                ],
                [
                  "entity.conditional_name"
                ],
                [
                  "hosts"
                ],
                [
                  "standalone"
                ],
                [
                  "azureSku"
                ],
                [
                  "gceHostName"
                ],
                [
                  "hypervisorType"
                ],
                [
                  "boshName"
                ],
                [
                  "standaloneSpecialAgentsOnly"
                ],
                [
                  "tags"
                ],
                [
                  "contains"
                ],
                [
                  "gcePublicIpAddresses"
                ],
                [
                  "paasMemoryLimit"
                ],
                [
                  "memoryTotal"
                ],
                [
                  "boshDeploymentId"
                ],
                [
                  "installerSupportAlert"
                ],
                [
                  "gceMachineType"
                ],
                [
                  "installerTrackedDownload"
                ],
                [
                  "gceInstanceId"
                ],
                [
                  "runs_on"
                ],
                [
                  "kubernetesLabels"
                ],
                [
                  "icon"
                ],
                [
                  "logPathLastUpdate"
                ],
                [
                  "monitored_by"
                ],
                [
                  "osVersion"
                ],
                [
                  "macAddresses"
                ],
                [
                  "zosCPUModelNumber"
                ],
                [
                  "azureSiteNames"
                ],
                [
                  "azureZone"
                ],
                [
                  "installerVersion"
                ],
                [
                  "boshAvailabilityZone"
                ],
                [
                  "azureResourceGroupName"
                ],
                [
                  "calls"
                ],
                [
                  "cloudPlatformVendorVersion"
                ],
                [
                  "instance_of"
                ],
                [
                  "zosTotalPhysicalMemory"
                ],
                [
                  "simultaneousMultithreading"
                ],
                [
                  "runs"
                ],
                [
                  "azureHostNames"
                ],
                [
                  "monitoringMode"
                ],
                [
                  "ebpfHasPublicTraffic"
                ],
                [
                  "azureVmScaleSetName"
                ],
                [
                  "osArchitecture"
                ],
                [
                  "logFileStatus"
                ],
                [
                  "zosSystemName"
                ],
                [
                  "boshInstanceId"
                ],
                [
                  "boshStemcellVersion"
                ],
                [
                  "kubernetesClusterName"
                ],
                [
                  "cloudType"
                ],
                [
                  "entity.detected_name"
                ],
                [
                  "clustered_by"
                ],
                [
                  "physicalMemory"
                ],
                [
                  "hasPublicTraffic"
                ],
                [
                  "ipAddress"
                ],
                [
                  "called_by"
                ],
                [
                  "virtualCpus"
                ],
                [
                  "zosTotalZiipProcessors"
                ],
                [
                  "logicalCpus"
                ],
                [
                  "hostGroupName"
                ],
                [
                  "networkZone"
                ],
                [
                  "logicalCpuCores"
                ],
                [
                  "isMonitoringCandidate"
                ],
                [
                  "cpuCores"
                ],
                [
                  "ebpfDiscoveryMonitored"
                ],
                [
                  "azureComputeModeName"
                ],
                [
                  "osServices"
                ],
                [
                  "zosLparName"
                ],
                [
                  "managementZones"
                ],
                [
                  "entity.type"
                ],
                [
                  "osType"
                ],
                [
                  "azureVmSizeLabel"
                ],
                [
                  "logSourceState"
                ],
                [
                  "zosCPUSerialNumber"
                ],
                [
                  "boshInstanceName"
                ],
                [
                  "oneAgentCustomHostName"
                ],
                [
                  "zosTotalGeneralPurposeProcessors"
                ],
                [
                  "gceInstanceName"
                ],
                [
                  "azureEnvironment"
                ],
                [
                  "entity.customized_name"
                ],
                [
                  "gceNumericProjectId"
                ],
                [
                  "accessible_by"
                ],
                [
                  "dt.security_context"
                ],
                [
                  "awsNameTag"
                ]
              ],
              "monospacedFontEnabled": true
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch $data_object:backtick, from:-24h \n| fieldsAdd $data_object_fields:noquote\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Preview of your selected DQL 🔍",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"entity.name\"]",
                "[\"id\"]",
                "[\"dt.system.table\"]",
                "[\"dt.system.environment\"]",
                "[\"lifetime\",\"start\"]",
                "[\"lifetime\",\"end\"]",
                "[\"instantiates\",\"dt.entity.process_group_instance\"]",
                "[\"metadata\"]",
                "[\"belongs_to\",\"dt.entity.container_group\"]",
                "[\"belongs_to\",\"dt.entity.cloud_application_instance\"]",
                "[\"belongs_to\",\"dt.entity.cloud_application_namespace\"]",
                "[\"belongs_to\",\"dt.entity.cloud_application\"]",
                "[\"gcpZone\"]",
                "[\"runs_on\",\"dt.entity.host\"]",
                "[\"icon\",\"primaryIconType\"]",
                "[\"icon\",\"secondaryIconType\"]",
                "[\"softwareTechnologies\"]",
                "[\"customPgMetadata\"]",
                "[\"listenPorts\"]",
                "[\"managementZones\"]",
                "[\"entity.type\"]",
                "[\"entity.detected_name\"]",
                "[\"customIconPath\"]",
                "[\"entity.conditional_name\"]",
                "[\"oneAgentCustomHostName\"]",
                "[\"groups\"]",
                "[\"entity.customized_name\"]",
                "[\"called_by\"]",
                "[\"boshName\"]",
                "[\"tags\"]",
                "[\"contains\"]",
                "[\"dt.security_context\"]",
                "[\"calls\"]",
                "[\"awsNameTag\"]",
                "[\"azureHostName\"]",
                "[\"runs\"]",
                "[\"azureSiteName\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "entity.name",
                    "id",
                    "\"dt.system.table\"",
                    "\"string\"",
                    "\"dt.system.environment\"",
                    "\"lifetime\"",
                    "\"timeframe\"",
                    "\"customIconPath\"",
                    "\"entity.conditional_name\"",
                    "\"oneAgentCustomHostName\"",
                    "\"gcpZone\"",
                    "\"icon\"",
                    "\"record\"",
                    "\"entity.customized_name\"",
                    "\"boshName\"",
                    "\"tags\"",
                    "\"array\"",
                    "\"contains\"",
                    "\"dt.security_context\"",
                    "\"managementZones\"",
                    "\"entity.type\"",
                    "\"awsNameTag\"",
                    "\"entity.name\"",
                    "\"entity.detected_name\"",
                    "\"id\""
                  ],
                  "id": 129688.19999999925,
                  "value": "log-content"
                }
              ]
            }
          }
        },
        "2": {
          "input": "import { queryAssistanceClient } from \"@dynatrace-sdk/client-query\";\nimport { queryExecutionClient } from '@dynatrace-sdk/client-query';\n\nexport default async function () {\n  console.log($custom_dql_input)\n const data = await queryAssistanceClient.queryVerify({\n  body: {\n    query: $custom_dql_input\n  },\n});\n  console.log(data);\n  return data;\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DQL Validation Results 🔍",
          "type": "code",
          "visualization": "raw",
          "visualizationSettings": {}
        },
        "3": {
          "content": "##### DQL Verifier for Advanced Users 🛠️\nPlease input your DQL under the `custom_dql_input` variable field located at the top.\n",
          "type": "markdown"
        },
        "4": {
          "input": "import { queryAssistanceClient } from '@dynatrace-sdk/client-query';\nimport { queryExecutionClient } from '@dynatrace-sdk/client-query';\n\nexport default async function () {\n  var custom_dql;\n    if ($custom_dql_input === \"Type your custom DQL\" || $custom_dql_input === \"\") {\n        custom_dql = \"Add your custom DQL to preview here\";\n    } else {\n        custom_dql = $custom_dql_input;\n    }\n    return custom_dql;\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Preview of User Inputted DQL 📝",
          "type": "code",
          "visualization": "raw",
          "visualizationSettings": {}
        },
        "5": {
          "content": "# DQL Builder \u0026 Validator 🛠️✅\n\nEasily Generate DQL commands with DQL builder and validator tools! \n\nVersion: 2.1 \n\n--- \n--- \n \n\n###### Beginners 🧩 \nPlease select an entity or GRAIL data object type from the `data_object` drop-down and then select one or more fields from the `data_object-fields` drop-down to auto-generate, execute and output the fetched results.\n\n\n--- \n \n###### Advanced Users 📐\nPlease input your prepared DQL query into the `custom_dql_input` variable to validate and view results.",
          "type": "markdown"
        },
        "8": {
          "content": "###### Sample Transformation Query 🔄\n--- \n \nfetch dt.entity.host \n\n| fieldsAdd timeframe = toString(lifetime),customHostMetadata,entity.name,tags, callers = toString(called_by)\n\n| expand tags\n\n| parse tags, \"\"\"LD:TagKey (':') LD:TagValue\"\"\"\n\n| parse timeframe, \"\"\"LD:start '/' LD:end\"\"\"\n\n| fieldsAdd firstSeen = toTimestamp(start), lastSeen = toTimestamp(end)\n\n| parse callers, \"\"\"LD '[' LD:Callers ']'\"\"\"\n\n| expand customHostMetadata\n\n| parse customHostMetadata, \"\"\"LD:metaDataKey (':') LD:metaDataValue\"\"\"\n\n| fieldsRemove id,tags, timeframe, start, end, callers, customHostMetadata",
          "type": "markdown"
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.host \n| fieldsAdd timeframe = toString(lifetime),customHostMetadata,entity.name,tags, callers = toString(called_by) \n| expand tags \n| parse tags, \"\"\"LD:TagKey (':') LD:TagValue\"\"\" \n| parse timeframe, \"\"\"LD:start '/' LD:end\"\"\" \n| fieldsAdd firstSeen = toTimestamp(start), lastSeen = toTimestamp(end) \n| parse callers, \"\"\"LD '[' LD:Callers ']'\"\"\" \n| expand customHostMetadata \n| parse customHostMetadata, \"\"\"LD:metaDataKey (':') LD:metaDataValue\"\"\"\n| fieldsRemove tags, timeframe, start, end, callers, customHostMetadata",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Sample Transformation Output 📋",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "entity.name",
                    "id",
                    "TagKey",
                    "TagValue",
                    "firstSeen",
                    "lastSeen",
                    "Callers",
                    "metaDataKey",
                    "metaDataValue"
                  ],
                  "id": 5760034.1,
                  "value": "log-content"
                }
              ],
              "columnWidths": {
                "[\"Callers\"]": 180.21875,
                "[\"TagKey\"]": 275.7000045776367,
                "[\"TagValue\"]": 183.00000000000006,
                "[\"entity.name\"]": 166.63125610351562,
                "[\"firstSeen\"]": 128.2312469482422,
                "[\"lastSeen\"]": 122.26875305175781,
                "[\"metaDataKey\"]": 127.07499694824219
              },
              "monospacedFontEnabled": true
            }
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "fetch dt.system.data_objects\n| fields display_name",
          "key": "data_object_name",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch dt.system.data_objects\n| filter display_name == $data_object_name\n| fields name",
          "key": "data_object",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "describe $data_object:backtick\n| fields field",
          "key": "data_object_fields",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "Type your custom DQL",
          "key": "custom_dql_input",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  private = true
}
