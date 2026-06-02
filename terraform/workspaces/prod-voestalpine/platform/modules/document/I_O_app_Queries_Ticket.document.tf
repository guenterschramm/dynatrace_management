resource "dynatrace_document" "I_O_app_Queries_Ticket" {
  name    = "I&O app Queries: Ticket##532626"
  type    = "notebook"
  content = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-7d",
        "to": "now()"
      },
      "sections": [
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 302,
          "id": "4c29fce3-151c-4a46-83ac-46e06db40ff1",
          "previousFilterSegments": [],
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
              "value": "//queryId=hostId-\u003econnections\nfetch dt.entity.host\n| filter id == \"HOST-39EDE9B0E3F6CF13\"\n| fieldsAdd incomingHosts = lookup([\n  fetch dt.entity.host\n  | filter in(id, classicEntitySelector(\"type(host), fromRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filterOut id == \"HOST-39EDE9B0E3F6CF13\" // filter out relations to itself\n  | summarize incomingHosts = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[incomingHosts]\n| fieldsAdd outgoingHosts = lookup([\n  fetch dt.entity.host\n  | filter in(id, classicEntitySelector(\"type(host), toRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filterOut id == \"HOST-39EDE9B0E3F6CF13\" // filter out relations to itself\n  | summarize outgoingHosts = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[outgoingHosts]\n| fieldsAdd incomingDevices = lookup([\n  fetch dt.entity.custom_device\n  | filter in(id, classicEntitySelector(\"type(custom_device), fromRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n  | summarize incomingDevices = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[incomingDevices]\n| fieldsAdd outgoingDevices = lookup([\n  fetch dt.entity.custom_device\n  | filter in(id, classicEntitySelector(\"type(custom_device), toRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n  | summarize outgoingDevices = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[outgoingDevices]\n| fieldsAdd outgoingHosts=record(type=\"outgoing\", dt.entity.host=outgoingHosts[]),\n  incomingHosts=record(type=\"incoming\", dt.entity.host=incomingHosts[]),\n  outgoingDevices=record(type=\"outgoing\", dt.entity.custom_device=outgoingDevices[]),\n  incomingDevices=record(type=\"incoming\", dt.entity.custom_device=incomingDevices[])\n| fields\n  sourceEntityId = id, sourceEntity = entity.name, call = arrayConcat(outgoingHosts, incomingHosts, incomingDevices, outgoingDevices)\n| filterOut isNull(call)\n| expand call\n| fields\n  sourceEntityId,\n  sourceEntity,\n  connectionType = call[type],\n  dt.entity.host = call[dt.entity.host],\n  dt.entity.custom_device = call[dt.entity.custom_device]\n| fieldsAdd\n  connectedEntity = if(isNull(dt.entity.host), entityName(dt.entity.custom_device), else: entityName(dt.entity.host)),\n  connectedEntityId = coalesce(dt.entity.host, dt.entity.custom_device)\n| fieldsRemove dt.entity.host, dt.entity.custom_device\n| append [\n  fetch dt.entity.process_group_instance, timeframe:\"2025-08-29T06:26:09.586Z/2025-08-29T08:26:09.586Z\"\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filter id in [\n    timeseries {\n      bytesTx=avg(dt.process.network.bytes_tx),\n      bytesRx=avg(dt.process.network.bytes_rx)\n    }, \nunion:true, filter: dt.entity.process_group_instance in [\n  fetch dt.entity.process_group_instance\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | fields id\n], by:{dt.entity.process_group_instance}, from: toTimestamp(\"2025-08-29T08:26:09.586Z\")-5m, to: toTimestamp(\"2025-08-29T08:26:09.586Z\")-4m\n    | sort arrayLast(bytesTx) +arrayLast(bytesRx) desc\n    | limit 5\n    | fields dt.entity.process_group_instance\n  ] or id in [\n    timeseries {\n      cpu=avg(dt.process.cpu.usage)\n    }, \nunion:true, filter: dt.entity.process_group_instance in [\n  fetch dt.entity.process_group_instance\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | fields id\n], by:{dt.entity.process_group_instance}, from: toTimestamp(\"2025-08-29T08:26:09.586Z\")-5m, to: toTimestamp(\"2025-08-29T08:26:09.586Z\")-4m\n    | sort arrayLast(cpu) desc\n    | limit 5\n    | fields dt.entity.process_group_instance\n  ]\n  | fieldsAdd\n    outgoing = calls[dt.entity.process_group_instance],\n    incoming = called_by[dt.entity.process_group_instance],\n    service = runs[dt.entity.service]\n  | fieldsAdd\n    outgoing=record(type=\"outgoing\", dt.entity.process_group_instance=outgoing[]),\n    incoming=record(type=\"incoming\", dt.entity.process_group_instance=incoming[]),\n    service = record(type=\"runs\", dt.entity.service=service[])\n  | fields\n    sourceEntityId=id,\n    sourceEntity=entity.name,\n    call = arrayConcat(outgoing, incoming, service)\n  | expand call\n  | fields\n    sourceEntityId,\n    sourceEntity,\n    connectionType = call[type],\n    dt.entity.process_group_instance = call[dt.entity.process_group_instance],\n    dt.entity.service = call[dt.entity.service]\n  | fieldsAdd\n    connectedEntity = if(isNotNull(dt.entity.process_group_instance), entityName(dt.entity.process_group_instance),\n                      else: entityName(dt.entity.service)),\n    connectedEntityId = coalesce(dt.entity.process_group_instance, dt.entity.service)\n  | fieldsRemove dt.entity.process_group_instance, dt.entity.service\n  | filter isNotNull(connectedEntity)\n]"
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
              "dateTime": "2026-01-30T06:59:54.120Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "//queryId=hostId-\u003econnections\nfetch dt.entity.host\n| filter id == \"HOST-39EDE9B0E3F6CF13\"\n| fieldsAdd incomingHosts = lookup([\n  fetch dt.entity.host\n  | filter in(id, classicEntitySelector(\"type(host), fromRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filterOut id == \"HOST-39EDE9B0E3F6CF13\" // filter out relations to itself\n  | summarize incomingHosts = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[incomingHosts]\n| fieldsAdd outgoingHosts = lookup([\n  fetch dt.entity.host\n  | filter in(id, classicEntitySelector(\"type(host), toRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filterOut id == \"HOST-39EDE9B0E3F6CF13\" // filter out relations to itself\n  | summarize outgoingHosts = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[outgoingHosts]\n| fieldsAdd incomingDevices = lookup([\n  fetch dt.entity.custom_device\n  | filter in(id, classicEntitySelector(\"type(custom_device), fromRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n  | summarize incomingDevices = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[incomingDevices]\n| fieldsAdd outgoingDevices = lookup([\n  fetch dt.entity.custom_device\n  | filter in(id, classicEntitySelector(\"type(custom_device), toRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n  | summarize outgoingDevices = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[outgoingDevices]\n| fieldsAdd outgoingHosts=record(type=\"outgoing\", dt.entity.host=outgoingHosts[]),\n  incomingHosts=record(type=\"incoming\", dt.entity.host=incomingHosts[]),\n  outgoingDevices=record(type=\"outgoing\", dt.entity.custom_device=outgoingDevices[]),\n  incomingDevices=record(type=\"incoming\", dt.entity.custom_device=incomingDevices[])\n| fields\n  sourceEntityId = id, sourceEntity = entity.name, call = arrayConcat(outgoingHosts, incomingHosts, incomingDevices, outgoingDevices)\n| filterOut isNull(call)\n| expand call\n| fields\n  sourceEntityId,\n  sourceEntity,\n  connectionType = call[type],\n  dt.entity.host = call[dt.entity.host],\n  dt.entity.custom_device = call[dt.entity.custom_device]\n| fieldsAdd\n  connectedEntity = if(isNull(dt.entity.host), entityName(dt.entity.custom_device), else: entityName(dt.entity.host)),\n  connectedEntityId = coalesce(dt.entity.host, dt.entity.custom_device)\n| fieldsRemove dt.entity.host, dt.entity.custom_device\n| append [\n  fetch dt.entity.process_group_instance, timeframe:\"2025-08-29T06:26:09.586Z/2025-08-29T08:26:09.586Z\"\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filter id in [\n    timeseries {\n      bytesTx=avg(dt.process.network.bytes_tx),\n      bytesRx=avg(dt.process.network.bytes_rx)\n    }, \nunion:true, filter: dt.entity.process_group_instance in [\n  fetch dt.entity.process_group_instance\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | fields id\n], by:{dt.entity.process_group_instance}, from: toTimestamp(\"2025-08-29T08:26:09.586Z\")-5m, to: toTimestamp(\"2025-08-29T08:26:09.586Z\")-4m\n    | sort arrayLast(bytesTx) +arrayLast(bytesRx) desc\n    | limit 5\n    | fields dt.entity.process_group_instance\n  ] or id in [\n    timeseries {\n      cpu=avg(dt.process.cpu.usage)\n    }, \nunion:true, filter: dt.entity.process_group_instance in [\n  fetch dt.entity.process_group_instance\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | fields id\n], by:{dt.entity.process_group_instance}, from: toTimestamp(\"2025-08-29T08:26:09.586Z\")-5m, to: toTimestamp(\"2025-08-29T08:26:09.586Z\")-4m\n    | sort arrayLast(cpu) desc\n    | limit 5\n    | fields dt.entity.process_group_instance\n  ]\n  | fieldsAdd\n    outgoing = calls[dt.entity.process_group_instance],\n    incoming = called_by[dt.entity.process_group_instance],\n    service = runs[dt.entity.service]\n  | fieldsAdd\n    outgoing=record(type=\"outgoing\", dt.entity.process_group_instance=outgoing[]),\n    incoming=record(type=\"incoming\", dt.entity.process_group_instance=incoming[]),\n    service = record(type=\"runs\", dt.entity.service=service[])\n  | fields\n    sourceEntityId=id,\n    sourceEntity=entity.name,\n    call = arrayConcat(outgoing, incoming, service)\n  | expand call\n  | fields\n    sourceEntityId,\n    sourceEntity,\n    connectionType = call[type],\n    dt.entity.process_group_instance = call[dt.entity.process_group_instance],\n    dt.entity.service = call[dt.entity.service]\n  | fieldsAdd\n    connectedEntity = if(isNotNull(dt.entity.process_group_instance), entityName(dt.entity.process_group_instance),\n                      else: entityName(dt.entity.service)),\n    connectedEntityId = coalesce(dt.entity.process_group_instance, dt.entity.service)\n  | fieldsRemove dt.entity.process_group_instance, dt.entity.service\n  | filter isNotNull(connectedEntity)\n]"
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
                      "end": "2026-01-30T06:59:53.692000000Z",
                      "start": "2025-08-29T06:26:09.586000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.host\n| filter id == \"HOST-39EDE9B0E3F6CF13\"\n| fieldsAdd incomingHosts = lookup(\n\t[\n\t\tfetch dt.entity.host\n\t\t| filter in(id, classicEntitySelector(\"type(host), fromRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n\t\t| filterOut id == \"HOST-39EDE9B0E3F6CF13\"\n\t\t| summarize incomingHosts = collectArray(id)\n\t\t| fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n\t], sourceField:id, lookupField:mainHost)[incomingHosts]\n| fieldsAdd outgoingHosts = lookup(\n\t[\n\t\tfetch dt.entity.host\n\t\t| filter in(id, classicEntitySelector(\"type(host), toRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n\t\t| filterOut id == \"HOST-39EDE9B0E3F6CF13\"\n\t\t| summarize outgoingHosts = collectArray(id)\n\t\t| fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n\t], sourceField:id, lookupField:mainHost)[outgoingHosts]\n| fieldsAdd incomingDevices = lookup(\n\t[\n\t\tfetch dt.entity.custom_device\n\t\t| filter in(id, classicEntitySelector(\"type(custom_device), fromRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n\t\t| summarize incomingDevices = collectArray(id)\n\t\t| fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n\t], sourceField:id, lookupField:mainHost)[incomingDevices]\n| fieldsAdd outgoingDevices = lookup(\n\t[\n\t\tfetch dt.entity.custom_device\n\t\t| filter in(id, classicEntitySelector(\"type(custom_device), toRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n\t\t| summarize outgoingDevices = collectArray(id)\n\t\t| fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n\t], sourceField:id, lookupField:mainHost)[outgoingDevices]\n| fieldsAdd outgoingHosts = record(type = \"outgoing\", dt.entity.host = outgoingHosts[]), incomingHosts = record(type = \"incoming\", dt.entity.host = incomingHosts[]), outgoingDevices = record(type = \"outgoing\", dt.entity.custom_device = outgoingDevices[]), incomingDevices = record(type = \"incoming\", dt.entity.custom_device = incomingDevices[])\n| fields sourceEntityId = id, sourceEntity = entity.name, call = arrayConcat(outgoingHosts, incomingHosts, incomingDevices, outgoingDevices)\n| filterOut isNull(call)\n| expand call\n| fields sourceEntityId, sourceEntity, connectionType = call[type], dt.entity.host = call[dt.entity.host], dt.entity.custom_device = call[dt.entity.custom_device]\n| fieldsAdd connectedEntity = if(isNull(dt.entity.host), entityName(dt.entity.custom_device), else:entityName(dt.entity.host)), connectedEntityId = coalesce(dt.entity.host, dt.entity.custom_device)\n| fieldsRemove dt.entity.host, dt.entity.custom_device\n| append \n\t[\n\t\tfetch dt.entity.process_group_instance, timeframe:\"2025-08-29T06:26:09.586Z/2025-08-29T08:26:09.586Z\"\n\t\t| filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n\t\t| filter (id in \n\t\t\t[\n\t\t\t\ttimeseries from:toTimestamp(\"2025-08-29T08:26:09.586Z\") - 5m, to:toTimestamp(\"2025-08-29T08:26:09.586Z\") - 4m, by:{dt.entity.process_group_instance}, filter:dt.entity.process_group_instance in \n\t\t\t\t\t[\n\t\t\t\t\t\tfetch dt.entity.process_group_instance\n\t\t\t\t\t\t| filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n\t\t\t\t\t\t| fields id\n\t\t\t\t\t], union:TRUE, {bytesTx = avg(dt.process.network.bytes_tx), bytesRx = avg(dt.process.network.bytes_rx)}\n\t\t\t\t| sort arrayLast(bytesTx) + arrayLast(bytesRx) desc\n\t\t\t\t| limit 5\n\t\t\t\t| fields dt.entity.process_group_instance\n\t\t\t]) OR (id in \n\t\t\t[\n\t\t\t\ttimeseries from:toTimestamp(\"2025-08-29T08:26:09.586Z\") - 5m, to:toTimestamp(\"2025-08-29T08:26:09.586Z\") - 4m, by:{dt.entity.process_group_instance}, filter:dt.entity.process_group_instance in \n\t\t\t\t\t[\n\t\t\t\t\t\tfetch dt.entity.process_group_instance\n\t\t\t\t\t\t| filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n\t\t\t\t\t\t| fields id\n\t\t\t\t\t], union:TRUE, cpu = avg(dt.process.cpu.usage)\n\t\t\t\t| sort arrayLast(cpu) desc\n\t\t\t\t| limit 5\n\t\t\t\t| fields dt.entity.process_group_instance\n\t\t\t])\n\t\t| fieldsAdd outgoing = calls[dt.entity.process_group_instance], incoming = called_by[dt.entity.process_group_instance], service = runs[dt.entity.service]\n\t\t| fieldsAdd outgoing = record(type = \"outgoing\", dt.entity.process_group_instance = outgoing[]), incoming = record(type = \"incoming\", dt.entity.process_group_instance = incoming[]), service = record(type = \"runs\", dt.entity.service = service[])\n\t\t| fields sourceEntityId = id, sourceEntity = entity.name, call = arrayConcat(outgoing, incoming, service)\n\t\t| expand call\n\t\t| fields sourceEntityId, sourceEntity, connectionType = call[type], dt.entity.process_group_instance = call[dt.entity.process_group_instance], dt.entity.service = call[dt.entity.service]\n\t\t| fieldsAdd connectedEntity = if(isNotNull(dt.entity.process_group_instance), entityName(dt.entity.process_group_instance), else:entityName(dt.entity.service)), connectedEntityId = coalesce(dt.entity.process_group_instance, dt.entity.service)\n\t\t| fieldsRemove dt.entity.process_group_instance, dt.entity.service\n\t\t| filter isNotNull(connectedEntity)\n\t]",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 169,
                    "locale": "de-DE",
                    "notifications": [],
                    "query": "//queryId=hostId-\u003econnections\nfetch dt.entity.host\n| filter id == \"HOST-39EDE9B0E3F6CF13\"\n| fieldsAdd incomingHosts = lookup([\n  fetch dt.entity.host\n  | filter in(id, classicEntitySelector(\"type(host), fromRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filterOut id == \"HOST-39EDE9B0E3F6CF13\" // filter out relations to itself\n  | summarize incomingHosts = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[incomingHosts]\n| fieldsAdd outgoingHosts = lookup([\n  fetch dt.entity.host\n  | filter in(id, classicEntitySelector(\"type(host), toRelationships.isNetworkClientOfHost(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filterOut id == \"HOST-39EDE9B0E3F6CF13\" // filter out relations to itself\n  | summarize outgoingHosts = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[outgoingHosts]\n| fieldsAdd incomingDevices = lookup([\n  fetch dt.entity.custom_device\n  | filter in(id, classicEntitySelector(\"type(custom_device), fromRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n  | summarize incomingDevices = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[incomingDevices]\n| fieldsAdd outgoingDevices = lookup([\n  fetch dt.entity.custom_device\n  | filter in(id, classicEntitySelector(\"type(custom_device), toRelationships.isNetworkClientOfHost(entityId(HOST-ECA5AA097ACC20C5))\"))\n  | summarize outgoingDevices = collectArray(id)\n  | fieldsAdd mainHost = \"HOST-39EDE9B0E3F6CF13\"\n], sourceField:id, lookupField:mainHost)[outgoingDevices]\n| fieldsAdd outgoingHosts=record(type=\"outgoing\", dt.entity.host=outgoingHosts[]),\n  incomingHosts=record(type=\"incoming\", dt.entity.host=incomingHosts[]),\n  outgoingDevices=record(type=\"outgoing\", dt.entity.custom_device=outgoingDevices[]),\n  incomingDevices=record(type=\"incoming\", dt.entity.custom_device=incomingDevices[])\n| fields\n  sourceEntityId = id, sourceEntity = entity.name, call = arrayConcat(outgoingHosts, incomingHosts, incomingDevices, outgoingDevices)\n| filterOut isNull(call)\n| expand call\n| fields\n  sourceEntityId,\n  sourceEntity,\n  connectionType = call[type],\n  dt.entity.host = call[dt.entity.host],\n  dt.entity.custom_device = call[dt.entity.custom_device]\n| fieldsAdd\n  connectedEntity = if(isNull(dt.entity.host), entityName(dt.entity.custom_device), else: entityName(dt.entity.host)),\n  connectedEntityId = coalesce(dt.entity.host, dt.entity.custom_device)\n| fieldsRemove dt.entity.host, dt.entity.custom_device\n| append [\n  fetch dt.entity.process_group_instance, timeframe:\"2025-08-29T06:26:09.586Z/2025-08-29T08:26:09.586Z\"\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | filter id in [\n    timeseries {\n      bytesTx=avg(dt.process.network.bytes_tx),\n      bytesRx=avg(dt.process.network.bytes_rx)\n    }, \nunion:true, filter: dt.entity.process_group_instance in [\n  fetch dt.entity.process_group_instance\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | fields id\n], by:{dt.entity.process_group_instance}, from: toTimestamp(\"2025-08-29T08:26:09.586Z\")-5m, to: toTimestamp(\"2025-08-29T08:26:09.586Z\")-4m\n    | sort arrayLast(bytesTx) +arrayLast(bytesRx) desc\n    | limit 5\n    | fields dt.entity.process_group_instance\n  ] or id in [\n    timeseries {\n      cpu=avg(dt.process.cpu.usage)\n    }, \nunion:true, filter: dt.entity.process_group_instance in [\n  fetch dt.entity.process_group_instance\n  | filter in(id, classicEntitySelector(\"type(process_group_instance), fromRelationships.isProcessOf(type(host),entityId(HOST-ECA5AA097ACC20C5))\"))\n  | fields id\n], by:{dt.entity.process_group_instance}, from: toTimestamp(\"2025-08-29T08:26:09.586Z\")-5m, to: toTimestamp(\"2025-08-29T08:26:09.586Z\")-4m\n    | sort arrayLast(cpu) desc\n    | limit 5\n    | fields dt.entity.process_group_instance\n  ]\n  | fieldsAdd\n    outgoing = calls[dt.entity.process_group_instance],\n    incoming = called_by[dt.entity.process_group_instance],\n    service = runs[dt.entity.service]\n  | fieldsAdd\n    outgoing=record(type=\"outgoing\", dt.entity.process_group_instance=outgoing[]),\n    incoming=record(type=\"incoming\", dt.entity.process_group_instance=incoming[]),\n    service = record(type=\"runs\", dt.entity.service=service[])\n  | fields\n    sourceEntityId=id,\n    sourceEntity=entity.name,\n    call = arrayConcat(outgoing, incoming, service)\n  | expand call\n  | fields\n    sourceEntityId,\n    sourceEntity,\n    connectionType = call[type],\n    dt.entity.process_group_instance = call[dt.entity.process_group_instance],\n    dt.entity.service = call[dt.entity.service]\n  | fieldsAdd\n    connectedEntity = if(isNotNull(dt.entity.process_group_instance), entityName(dt.entity.process_group_instance),\n                      else: entityName(dt.entity.service)),\n    connectedEntityId = coalesce(dt.entity.process_group_instance, dt.entity.service)\n  | fieldsRemove dt.entity.process_group_instance, dt.entity.service\n  | filter isNotNull(connectedEntity)\n]",
                    "queryId": "4d2ea704-51ca-4647-a3ef-f0de61b47394",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 0,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "description": "Number of bytes sent per second",
                      "displayName": "Bytes sent",
                      "fieldName": "bytesTx",
                      "metric.key": "dt.process.network.bytes_tx",
                      "unit": "By/s"
                    },
                    {
                      "description": "Number of bytes received per second",
                      "displayName": "Bytes received",
                      "fieldName": "bytesRx",
                      "metric.key": "dt.process.network.bytes_rx",
                      "unit": "By/s"
                    },
                    {
                      "description": "This metric is the percentage of the CPU usage of a process. The metric value is the sum of CPU time every process worker uses divided by the total available CPU time. The result is expressed in percentage. A value of 100% indicates that the process uses all available CPU resources of the host.",
                      "displayName": "Process CPU usage",
                      "fieldName": "cpu",
                      "metric.key": "dt.process.cpu.usage",
                      "unit": "%"
                    }
                  ]
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "chartSettings": {},
              "thresholds": []
            }
          },
          "title": "Connection component, image Connection_Missing",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 133,
          "id": "46bd49d0-fbbc-43a1-baae-88baaa19e295",
          "previousFilterSegments": [],
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
              "value": "// e.g. connection from HOST-39EDE9B0E3F6CF13 to HOST-ECA5AA097ACC20C5\nfetch dt.entity.host\n| filter in(id, {\"HOST-39EDE9B0E3F6CF13\", \"HOST-ECA5AA097ACC20C5\"})\n| fieldsAdd dt.security_context"
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
              "dateTime": "2025-09-01T07:14:11.424Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "// e.g. connection from HOST-39EDE9B0E3F6CF13 to HOST-ECA5AA097ACC20C5\nfetch dt.entity.host\n| filter in(id, {\"HOST-39EDE9B0E3F6CF13\", \"HOST-ECA5AA097ACC20C5\"})\n| fieldsAdd dt.security_context"
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
                      "end": "2025-09-01T07:14:11.174000000Z",
                      "start": "2025-09-01T05:14:11.174000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.host\n| filter in(id, {\"HOST-39EDE9B0E3F6CF13\", \"HOST-ECA5AA097ACC20C5\"})\n| fieldsAdd dt.security_context",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 30,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "// e.g. connection from HOST-39EDE9B0E3F6CF13 to HOST-ECA5AA097ACC20C5\nfetch dt.entity.host\n| filter in(id, {\"HOST-39EDE9B0E3F6CF13\", \"HOST-ECA5AA097ACC20C5\"})\n| fieldsAdd dt.security_context",
                    "queryId": "d4256198-8a8d-46a1-8485-b45b12c6247d",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 2,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.security_context": [
                      "Virtualization Services",
                      "PAM - Privileged Access Management"
                    ],
                    "entity.name": "2217PSM0468P01",
                    "id": "HOST-ECA5AA097ACC20C5"
                  },
                  {
                    "dt.security_context": [
                      "Citrix",
                      "Virtualization Services"
                    ],
                    "entity.name": "2217cx0010wei52.voestalpine.root.local",
                    "id": "HOST-39EDE9B0E3F6CF13"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      1
                    ],
                    "mappings": {
                      "dt.security_context": {
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
                      "entity.name": {
                        "type": "string"
                      },
                      "id": {
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
              "chartSettings": {},
              "thresholds": []
            }
          },
          "type": "dql"
        },
        {
          "id": "476b7f2e-c4dd-4501-9c57-1c7afec0fd8b",
          "markdown": "# Data_Center",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 106,
          "id": "18d4ad06-c2e2-4023-bdea-cd55ad82f624",
          "previousFilterSegments": [],
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-7d",
                "to": "now()"
              },
              "value": "fetch dt.entity.vmware_datacenter\n| filter entity.name == \"DC-AT-CITRIX-Linz\"\n| fieldsAdd dt.security_context"
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
              "dateTime": "2025-09-02T09:14:50.448Z",
              "input": {
                "timeframe": {
                  "from": "now()-7d",
                  "to": "now()"
                },
                "value": "fetch dt.entity.vmware_datacenter\n| filter entity.name == \"DC-AT-CITRIX-Linz\"\n| fieldsAdd dt.security_context"
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
                      "end": "2025-09-02T09:14:50.245000000Z",
                      "start": "2025-08-26T09:14:50.245000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.vmware_datacenter\n| filter entity.name == \"DC-AT-CITRIX-Linz\"\n| fieldsAdd dt.security_context",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 33,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "fetch dt.entity.vmware_datacenter\n| filter entity.name == \"DC-AT-CITRIX-Linz\"\n| fieldsAdd dt.security_context",
                    "queryId": "348a7577-b91a-45c8-8d8e-4ca54609f0cd",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 1,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "dt.security_context": null,
                    "entity.name": "DC-AT-CITRIX-Linz",
                    "id": "VMWARE_DATACENTER-971125DA28AD3E65"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "dt.security_context": {
                        "type": "undefined"
                      },
                      "entity.name": {
                        "type": "string"
                      },
                      "id": {
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
              "chartSettings": {}
            }
          },
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 72,
          "id": "227beb6d-2578-4f63-a9ab-5a74bf549375",
          "previousFilterSegments": [],
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
              "value": "fetch dt.entity.host\n        | filterOut isMonitoringCandidate\n          \n        | fields\n            id,\n            dt.entity.aws_availability_zone=belongs_to[dt.entity.aws_availability_zone],\n            dt.entity.azure_region=belongs_to[dt.entity.azure_region],\n            dt.entity.geoloc_site=belongs_to[dt.entity.geoloc_site],\n            dt.entity.gcp_zone=belongs_to[dt.entity.gcp_zone],\n            dt.entity.vmware_datacenter=belongs_to[dt.entity.vmware_datacenter]\n       | fieldsAdd\n       awsDataCenterName = entityName(dt.entity.aws_availability_zone),\n       azureRegionName = entityName(dt.entity.azure_region),\n       vmwareDatacenterName = entityName(dt.entity.vmware_datacenter),\n       geolocSiteName = entityName(dt.entity.geoloc_site),\n       gcpZoneName = entityName(dt.entity.gcp_zone)\n       | fields\n            dataCenter = coalesce(dt.entity.aws_availability_zone, dt.entity.azure_region, dt.entity.vmware_datacenter, dt.entity.gcp_zone, dt.entity.geoloc_site, \"NO_DATACENTER\"),\n            {coalesce(awsDataCenterName, azureRegionName, vmwareDatacenterName, gcpZoneName, geolocSiteName, \"No Data center\"), alias:dataCenterName},\n            id\n       | fields id, dataCenter, dataCenterName\n       | lookup [\n            timeseries avg(dt.host.availability), alias: availability, by:{dt.entity.host, availability.state}, filter: availability.state == \"up\"\n           | fieldsAdd available = arrayLast(availability)\n         ],\n         sourceField:id, lookupField:dt.entity.host, prefix:\"availability.\"\n       | fieldsRemove availability.dt.entity.host\n       | lookup [\n       \nfetch dt.davis.events.snapshots, from: toTimestamp(\"2025-09-02T07:09:40.389Z\")-370m, to: toTimestamp(\"2025-09-02T09:09:40.389Z\")\n  | filter in(affected_entity_types, \"dt.entity.host\") and event.type != \"OSI_GRACEFULLY_SHUTDOWN\" and event.category != \"INFO\" or (event.type == \"AVAILABILITY_EVENT\" and dt.source_entity.type == \"os:service\")\n  | dedup event.id, sort: {timestamp desc}\n  | filter true == true | fieldsAdd affected_entity_ids=arrayDistinct(arrayConcat(affected_entity_ids,toArray(dt.entity.host)))\n  | filterOut event.provider == \"ROOT_CAUSE_ANALYSIS\"\n  | filter (isNull(event.end) OR event.end \u003e= toTimestamp(\"2025-09-02T07:09:40.389Z\")) AND event.start \u003c= toTimestamp(\"2025-09-02T09:09:40.389Z\")\n\n  | fieldsAdd investigationMode = 0\n  | lookup [\n    fetch dt.davis.problems.snapshots, from: toTimestamp(\"2025-09-02T07:09:40.389Z\")-370m, to: 1m@m\n  | filter in(affected_entity_types, \"dt.entity.host\") or event.category == \"AVAILABILITY\"\n      | dedup event.id, sort:{timestamp desc}\n      | fieldsAdd investigationMode = false\n      | expand dt.davis.event_ids\n      | sort investigationMode desc, dt.davis.is_duplicate desc\n      | summarize {problems = collectArray(record(problem.id=event.id, problem.kind=event.kind, problem.start=event.start, problem.end=event.end, dt.davis.is_duplicate, investigationMode)), investigationMode = countIf(investigationMode)}, by: {dt.davis.event_ids}\n  ], sourceField: event.id, lookupField: dt.davis.event_ids, fields: {problems, investigationMode}, executionOrder:leftFirst\n  | filter true == false OR event.status == \"ACTIVE\" OR investigationMode \u003e 0\n  | expand affected_entity_ids\n  | fieldsAdd isHealthAlert = in(event.type, {\"OSI_HIGH_CPU\",\"EC2_HIGH_CPU\",\"ESXI_GUEST_CPU_LIMIT_REACHED\",\"ESXI_VM_IMPACT_HOST_CPU_SATURATION\",\"OSI_HIGH_MEMORY\",\"ESXI_VM_IMPACT_HOST_MEMORY_SATURATION\",\"OSI_SLOW_DISK\",\"OSI_LOW_DISK_SPACE\",\"OSI_DISK_LOW_INODES\"}) OR (in(event.type, {\"OSI_NIC_DROPPED_PACKETS_HIGH\",\"OSI_NIC_ERRORS_HIGH\",\"OSI_NIC_UTILIZATION_HIGH\"}) AND isNotNull(dt.entity.network_interface)) OR in(event.description, {\"OSI_UNEXPECTEDLY_UNAVAILABLE\"}) OR (in(event.type, {\"AVAILABILITY_EVENT\"}) AND in(dt.source_entity.type, {\"os:service\"})) OR (in(event.type, {\"AVAILABILITY_EVENT\"}) AND in(dt.settings.schema_id, {\"builtin:processavailability\"})) OR in(event.name, {\"UNGRACEFULLY_REBOOTED_EVENT_NAME\"})\n  | fieldsAdd\n    healthIndicators = if(isHealthAlert, record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id=affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id)),\n    customAlerts = if(not(isHealthAlert) OR isNull(isHealthAlert), record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id=affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id))\n  | summarize {\n    healthIndicators = arrayRemoveNulls(collectArray(healthIndicators)),\n    customAlerts = arrayRemoveNulls(collectArray(customAlerts)),\n    _activeEventsCount = countIf(event.status == \"ACTIVE\"),\n    _closedEventsCount = countIf(event.status == \"CLOSED\"),\n    investigationMode = sum(investigationMode),\n    investigationThreshold = countIf(event.status == \"ACTIVE\" AND investigationMode \u003e 0)\n  }, by: {affected_entity_ids}\n  | fieldsAdd eventsThreshold = if(_activeEventsCount \u003e 0, 1, else: if(_closedEventsCount \u003e 0, 0, else: -1))\n| fieldsAdd healthIndicators = record(problems = healthIndicators[][problems], event.id = healthIndicators[][event.id], event.status = healthIndicators[][event.status], type=\"HEALTH_INDICATOR\", affected_entity_ids)\n| fieldsAdd customAlerts = record(problems = customAlerts[][problems], event.id = customAlerts[][event.id], event.status = customAlerts[][event.status], type=\"CUSTOM_ALERT\", affected_entity_ids)\n| fields connect = arrayFlatten(array(healthIndicators, customAlerts))\n| expand connect\n| fields problemsIDs = connect[problems][][problem.id], eventId = connect[event.id], eventStatus = connect[event.status], type = connect[type], affected_entity_ids= connect[affected_entity_ids]\n| summarize alerts = collectArray(record(type, eventId, eventStatus, problemsIDs, entity = affected_entity_ids)), by: {affected_entity_ids}\n        ], sourceField: id, lookupField: affected_entity_ids, fields: {alerts}\n       | summarize {\n            {arrayRemoveNulls(arrayFlatten(collectArray(alerts))), alias: alerts},\n            {takeFirst(dataCenterName), alias: name},\n            {arraySize(collectDistinct(id)), alias: hosts},\n            {countIf(availability.available == 1), alias: monitoredHosts}\n        },\n        by:{dataCenter, alias: id}\n        | fieldsAdd monitoredPercentage = toDouble(monitoredHosts) / hosts\n        | fieldsRemove monitoredHosts\n        | fieldsAdd dataCenterType = splitString(id, \"-\")[0]\n// Filters: [dc-name-Filter]\n| filter name == \"DC-AT-CITRIX-Linz\"\n| limit 25010"
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
              "dateTime": "2026-01-30T07:00:09.911Z",
              "input": {
                "filterSegments": [],
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch dt.entity.host\n        | filterOut isMonitoringCandidate\n          \n        | fields\n            id,\n            dt.entity.aws_availability_zone=belongs_to[dt.entity.aws_availability_zone],\n            dt.entity.azure_region=belongs_to[dt.entity.azure_region],\n            dt.entity.geoloc_site=belongs_to[dt.entity.geoloc_site],\n            dt.entity.gcp_zone=belongs_to[dt.entity.gcp_zone],\n            dt.entity.vmware_datacenter=belongs_to[dt.entity.vmware_datacenter]\n       | fieldsAdd\n       awsDataCenterName = entityName(dt.entity.aws_availability_zone),\n       azureRegionName = entityName(dt.entity.azure_region),\n       vmwareDatacenterName = entityName(dt.entity.vmware_datacenter),\n       geolocSiteName = entityName(dt.entity.geoloc_site),\n       gcpZoneName = entityName(dt.entity.gcp_zone)\n       | fields\n            dataCenter = coalesce(dt.entity.aws_availability_zone, dt.entity.azure_region, dt.entity.vmware_datacenter, dt.entity.gcp_zone, dt.entity.geoloc_site, \"NO_DATACENTER\"),\n            {coalesce(awsDataCenterName, azureRegionName, vmwareDatacenterName, gcpZoneName, geolocSiteName, \"No Data center\"), alias:dataCenterName},\n            id\n       | fields id, dataCenter, dataCenterName\n       | lookup [\n            timeseries avg(dt.host.availability), alias: availability, by:{dt.entity.host, availability.state}, filter: availability.state == \"up\"\n           | fieldsAdd available = arrayLast(availability)\n         ],\n         sourceField:id, lookupField:dt.entity.host, prefix:\"availability.\"\n       | fieldsRemove availability.dt.entity.host\n       | lookup [\n       \nfetch dt.davis.events.snapshots, from: toTimestamp(\"2025-09-02T07:09:40.389Z\")-370m, to: toTimestamp(\"2025-09-02T09:09:40.389Z\")\n  | filter in(affected_entity_types, \"dt.entity.host\") and event.type != \"OSI_GRACEFULLY_SHUTDOWN\" and event.category != \"INFO\" or (event.type == \"AVAILABILITY_EVENT\" and dt.source_entity.type == \"os:service\")\n  | dedup event.id, sort: {timestamp desc}\n  | filter true == true | fieldsAdd affected_entity_ids=arrayDistinct(arrayConcat(affected_entity_ids,toArray(dt.entity.host)))\n  | filterOut event.provider == \"ROOT_CAUSE_ANALYSIS\"\n  | filter (isNull(event.end) OR event.end \u003e= toTimestamp(\"2025-09-02T07:09:40.389Z\")) AND event.start \u003c= toTimestamp(\"2025-09-02T09:09:40.389Z\")\n\n  | fieldsAdd investigationMode = 0\n  | lookup [\n    fetch dt.davis.problems.snapshots, from: toTimestamp(\"2025-09-02T07:09:40.389Z\")-370m, to: 1m@m\n  | filter in(affected_entity_types, \"dt.entity.host\") or event.category == \"AVAILABILITY\"\n      | dedup event.id, sort:{timestamp desc}\n      | fieldsAdd investigationMode = false\n      | expand dt.davis.event_ids\n      | sort investigationMode desc, dt.davis.is_duplicate desc\n      | summarize {problems = collectArray(record(problem.id=event.id, problem.kind=event.kind, problem.start=event.start, problem.end=event.end, dt.davis.is_duplicate, investigationMode)), investigationMode = countIf(investigationMode)}, by: {dt.davis.event_ids}\n  ], sourceField: event.id, lookupField: dt.davis.event_ids, fields: {problems, investigationMode}, executionOrder:leftFirst\n  | filter true == false OR event.status == \"ACTIVE\" OR investigationMode \u003e 0\n  | expand affected_entity_ids\n  | fieldsAdd isHealthAlert = in(event.type, {\"OSI_HIGH_CPU\",\"EC2_HIGH_CPU\",\"ESXI_GUEST_CPU_LIMIT_REACHED\",\"ESXI_VM_IMPACT_HOST_CPU_SATURATION\",\"OSI_HIGH_MEMORY\",\"ESXI_VM_IMPACT_HOST_MEMORY_SATURATION\",\"OSI_SLOW_DISK\",\"OSI_LOW_DISK_SPACE\",\"OSI_DISK_LOW_INODES\"}) OR (in(event.type, {\"OSI_NIC_DROPPED_PACKETS_HIGH\",\"OSI_NIC_ERRORS_HIGH\",\"OSI_NIC_UTILIZATION_HIGH\"}) AND isNotNull(dt.entity.network_interface)) OR in(event.description, {\"OSI_UNEXPECTEDLY_UNAVAILABLE\"}) OR (in(event.type, {\"AVAILABILITY_EVENT\"}) AND in(dt.source_entity.type, {\"os:service\"})) OR (in(event.type, {\"AVAILABILITY_EVENT\"}) AND in(dt.settings.schema_id, {\"builtin:processavailability\"})) OR in(event.name, {\"UNGRACEFULLY_REBOOTED_EVENT_NAME\"})\n  | fieldsAdd\n    healthIndicators = if(isHealthAlert, record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id=affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id)),\n    customAlerts = if(not(isHealthAlert) OR isNull(isHealthAlert), record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id=affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id))\n  | summarize {\n    healthIndicators = arrayRemoveNulls(collectArray(healthIndicators)),\n    customAlerts = arrayRemoveNulls(collectArray(customAlerts)),\n    _activeEventsCount = countIf(event.status == \"ACTIVE\"),\n    _closedEventsCount = countIf(event.status == \"CLOSED\"),\n    investigationMode = sum(investigationMode),\n    investigationThreshold = countIf(event.status == \"ACTIVE\" AND investigationMode \u003e 0)\n  }, by: {affected_entity_ids}\n  | fieldsAdd eventsThreshold = if(_activeEventsCount \u003e 0, 1, else: if(_closedEventsCount \u003e 0, 0, else: -1))\n| fieldsAdd healthIndicators = record(problems = healthIndicators[][problems], event.id = healthIndicators[][event.id], event.status = healthIndicators[][event.status], type=\"HEALTH_INDICATOR\", affected_entity_ids)\n| fieldsAdd customAlerts = record(problems = customAlerts[][problems], event.id = customAlerts[][event.id], event.status = customAlerts[][event.status], type=\"CUSTOM_ALERT\", affected_entity_ids)\n| fields connect = arrayFlatten(array(healthIndicators, customAlerts))\n| expand connect\n| fields problemsIDs = connect[problems][][problem.id], eventId = connect[event.id], eventStatus = connect[event.status], type = connect[type], affected_entity_ids= connect[affected_entity_ids]\n| summarize alerts = collectArray(record(type, eventId, eventStatus, problemsIDs, entity = affected_entity_ids)), by: {affected_entity_ids}\n        ], sourceField: id, lookupField: affected_entity_ids, fields: {alerts}\n       | summarize {\n            {arrayRemoveNulls(arrayFlatten(collectArray(alerts))), alias: alerts},\n            {takeFirst(dataCenterName), alias: name},\n            {arraySize(collectDistinct(id)), alias: hosts},\n            {countIf(availability.available == 1), alias: monitoredHosts}\n        },\n        by:{dataCenter, alias: id}\n        | fieldsAdd monitoredPercentage = toDouble(monitoredHosts) / hosts\n        | fieldsRemove monitoredHosts\n        | fieldsAdd dataCenterType = splitString(id, \"-\")[0]\n// Filters: [dc-name-Filter]\n| filter name == \"DC-AT-CITRIX-Linz\"\n| limit 25010"
              },
              "notifications": [
                {
                  "arguments": [
                    "TRUE == TRUE",
                    "=="
                  ],
                  "message": "The expression `TRUE == TRUE` is always true because the two arguments of == are equal.",
                  "messageFormat": "The expression `%1$s` is always true because the two arguments of %2$s are equal.",
                  "messageFormatSpecifierTypes": [
                    "INPUT_QUERY_PART",
                    "OPERATOR"
                  ],
                  "notificationType": "EXPRESSION_ALWAYS_TRUE_EQUALS",
                  "severity": "warning",
                  "syntaxPosition": {
                    "end": {
                      "column": 23,
                      "index": 2015,
                      "line": 33
                    },
                    "start": {
                      "column": 12,
                      "index": 2004,
                      "line": 33
                    }
                  }
                },
                {
                  "arguments": [],
                  "message": "The filter condition evaluates to a constant value. This means either you won't get a result or the filter won't have an effect.",
                  "messageFormat": "The filter condition evaluates to a constant value. This means either you won't get a result or the filter won't have an effect.",
                  "messageFormatSpecifierTypes": [],
                  "notificationType": "CONSTANT_FILTER_CONDITION",
                  "severity": "warning",
                  "syntaxPosition": {
                    "end": {
                      "column": 23,
                      "index": 2015,
                      "line": 33
                    },
                    "start": {
                      "column": 12,
                      "index": 2004,
                      "line": 33
                    }
                  }
                },
                {
                  "arguments": [
                    "TRUE == FALSE",
                    "=="
                  ],
                  "message": "The expression `TRUE == FALSE` is always false because the  two arguments of == are not equal.",
                  "messageFormat": "The expression `%1$s` is always false because the  two arguments of %2$s are not equal.",
                  "messageFormatSpecifierTypes": [
                    "INPUT_QUERY_PART",
                    "OPERATOR"
                  ],
                  "notificationType": "EXPRESSION_ALWAYS_FALSE_EQUALS",
                  "severity": "warning",
                  "syntaxPosition": {
                    "end": {
                      "column": 24,
                      "index": 3162,
                      "line": 47
                    },
                    "start": {
                      "column": 12,
                      "index": 3150,
                      "line": 47
                    }
                  }
                }
              ],
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
                      "end": "2026-01-30T07:01:00.000000000Z",
                      "start": "2025-09-02T00:59:40.389000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.host\n| filterOut isMonitoringCandidate\n| fields id, dt.entity.aws_availability_zone = belongs_to[dt.entity.aws_availability_zone], dt.entity.azure_region = belongs_to[dt.entity.azure_region], dt.entity.geoloc_site = belongs_to[dt.entity.geoloc_site], dt.entity.gcp_zone = belongs_to[dt.entity.gcp_zone], dt.entity.vmware_datacenter = belongs_to[dt.entity.vmware_datacenter]\n| fieldsAdd awsDataCenterName = entityName(dt.entity.aws_availability_zone), azureRegionName = entityName(dt.entity.azure_region), vmwareDatacenterName = entityName(dt.entity.vmware_datacenter), geolocSiteName = entityName(dt.entity.geoloc_site), gcpZoneName = entityName(dt.entity.gcp_zone)\n| fields dataCenter = coalesce(dt.entity.aws_availability_zone, dt.entity.azure_region, dt.entity.vmware_datacenter, dt.entity.gcp_zone, dt.entity.geoloc_site, \"NO_DATACENTER\"), dataCenterName = coalesce(awsDataCenterName, azureRegionName, vmwareDatacenterName, gcpZoneName, geolocSiteName, \"No Data center\"), id\n| fields id, dataCenter, dataCenterName\n| lookup \n\t[\n\t\ttimeseries by:{dt.entity.host, availability.state}, filter:availability.state == \"up\", availability = avg(dt.host.availability)\n\t\t| fieldsAdd available = arrayLast(availability)\n\t], sourceField:id, lookupField:dt.entity.host, prefix:\"availability.\"\n| fieldsRemove availability.dt.entity.host\n| lookup \n\t[\n\t\tfetch dt.davis.events.snapshots, from:toTimestamp(\"2025-09-02T07:09:40.389Z\") - 370m, to:toTimestamp(\"2025-09-02T09:09:40.389Z\")\n\t\t| filter in(affected_entity_types, \"dt.entity.host\") AND event.type != \"OSI_GRACEFULLY_SHUTDOWN\" AND event.category != \"INFO\" OR event.type == \"AVAILABILITY_EVENT\" AND dt.source_entity.type == \"os:service\"\n\t\t| dedup sort:{timestamp desc}, event.id\n\t\t| filter TRUE == TRUE\n\t\t| fieldsAdd affected_entity_ids = arrayDistinct(arrayConcat(affected_entity_ids, toArray(dt.entity.host)))\n\t\t| filterOut event.provider == \"ROOT_CAUSE_ANALYSIS\"\n\t\t| filter (isNull(event.end) OR event.end \u003e= toTimestamp(\"2025-09-02T07:09:40.389Z\")) AND event.start \u003c= toTimestamp(\"2025-09-02T09:09:40.389Z\")\n\t\t| fieldsAdd investigationMode = 0\n\t\t| lookup \n\t\t\t[\n\t\t\t\tfetch dt.davis.problems.snapshots, from:toTimestamp(\"2025-09-02T07:09:40.389Z\") - 370m, to:1m@m\n\t\t\t\t| filter in(affected_entity_types, \"dt.entity.host\") OR event.category == \"AVAILABILITY\"\n\t\t\t\t| dedup sort:{timestamp desc}, event.id\n\t\t\t\t| fieldsAdd investigationMode = FALSE\n\t\t\t\t| expand dt.davis.event_ids\n\t\t\t\t| sort investigationMode desc, dt.davis.is_duplicate desc\n\t\t\t\t| summarize by:{dt.davis.event_ids}, {problems = collectArray(record(problem.id = event.id, problem.kind = event.kind, problem.start = event.start, problem.end = event.end, dt.davis.is_duplicate, investigationMode)), investigationMode = countIf(investigationMode)}\n\t\t\t], sourceField:event.id, lookupField:dt.davis.event_ids, fields:{problems, investigationMode}, executionOrder:leftFirst\n\t\t| filter TRUE == FALSE OR event.status == \"ACTIVE\" OR investigationMode \u003e 0\n\t\t| expand affected_entity_ids\n\t\t| fieldsAdd isHealthAlert = in(event.type, {\"OSI_HIGH_CPU\", \"EC2_HIGH_CPU\", \"ESXI_GUEST_CPU_LIMIT_REACHED\", \"ESXI_VM_IMPACT_HOST_CPU_SATURATION\", \"OSI_HIGH_MEMORY\", \"ESXI_VM_IMPACT_HOST_MEMORY_SATURATION\", \"OSI_SLOW_DISK\", \"OSI_LOW_DISK_SPACE\", \"OSI_DISK_LOW_INODES\"}) OR in(event.type, {\"OSI_NIC_DROPPED_PACKETS_HIGH\", \"OSI_NIC_ERRORS_HIGH\", \"OSI_NIC_UTILIZATION_HIGH\"}) AND isNotNull(dt.entity.network_interface) OR in(event.description, \"OSI_UNEXPECTEDLY_UNAVAILABLE\") OR in(event.type, \"AVAILABILITY_EVENT\") AND in(dt.source_entity.type, \"os:service\") OR in(event.type, \"AVAILABILITY_EVENT\") AND in(dt.settings.schema_id, \"builtin:processavailability\") OR in(event.name, \"UNGRACEFULLY_REBOOTED_EVENT_NAME\")\n\t\t| fieldsAdd healthIndicators = if(isHealthAlert, record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id = affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id)), customAlerts = if(NOT isHealthAlert OR isNull(isHealthAlert), record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id = affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id))\n\t\t| summarize by:{affected_entity_ids}, {healthIndicators = arrayRemoveNulls(collectArray(healthIndicators)), customAlerts = arrayRemoveNulls(collectArray(customAlerts)), _activeEventsCount = countIf(event.status == \"ACTIVE\"), _closedEventsCount = countIf(event.status == \"CLOSED\"), investigationMode = sum(investigationMode), investigationThreshold = countIf(event.status == \"ACTIVE\" AND investigationMode \u003e 0)}\n\t\t| fieldsAdd eventsThreshold = if(_activeEventsCount \u003e 0, 1, else:if(_closedEventsCount \u003e 0, 0, else:-1))\n\t\t| fieldsAdd healthIndicators = record(problems = healthIndicators[][problems], event.id = healthIndicators[][event.id], event.status = healthIndicators[][event.status], type = \"HEALTH_INDICATOR\", affected_entity_ids)\n\t\t| fieldsAdd customAlerts = record(problems = customAlerts[][problems], event.id = customAlerts[][event.id], event.status = customAlerts[][event.status], type = \"CUSTOM_ALERT\", affected_entity_ids)\n\t\t| fields connect = arrayFlatten(array(healthIndicators, customAlerts))\n\t\t| expand connect\n\t\t| fields problemsIDs = connect[problems][][problem.id], eventId = connect[event.id], eventStatus = connect[event.status], type = connect[type], affected_entity_ids = connect[affected_entity_ids]\n\t\t| summarize by:{affected_entity_ids}, alerts = collectArray(record(type, eventId, eventStatus, problemsIDs, entity = affected_entity_ids))\n\t], sourceField:id, lookupField:affected_entity_ids, fields:{alerts}\n| summarize by:{id = dataCenter}, {alerts = arrayRemoveNulls(arrayFlatten(collectArray(alerts))), name = takeFirst(dataCenterName), hosts = arraySize(collectDistinct(id)), monitoredHosts = countIf(availability.available == 1)}\n| fieldsAdd monitoredPercentage = toDouble(monitoredHosts) / hosts\n| fieldsRemove monitoredHosts\n| fieldsAdd dataCenterType = splitString(id, \"-\")[0]\n| filter name == \"DC-AT-CITRIX-Linz\"\n| limit 25010",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 534,
                    "locale": "de-DE",
                    "notifications": [
                      {
                        "arguments": [
                          "TRUE == TRUE",
                          "=="
                        ],
                        "message": "The expression `TRUE == TRUE` is always true because the two arguments of == are equal.",
                        "messageFormat": "The expression `%1$s` is always true because the two arguments of %2$s are equal.",
                        "messageFormatSpecifierTypes": [
                          "INPUT_QUERY_PART",
                          "OPERATOR"
                        ],
                        "notificationType": "EXPRESSION_ALWAYS_TRUE_EQUALS",
                        "severity": "WARNING",
                        "syntaxPosition": {
                          "end": {
                            "column": 23,
                            "index": 2015,
                            "line": 33
                          },
                          "start": {
                            "column": 12,
                            "index": 2004,
                            "line": 33
                          }
                        }
                      },
                      {
                        "arguments": [],
                        "message": "The filter condition evaluates to a constant value. This means either you won't get a result or the filter won't have an effect.",
                        "messageFormat": "The filter condition evaluates to a constant value. This means either you won't get a result or the filter won't have an effect.",
                        "messageFormatSpecifierTypes": [],
                        "notificationType": "CONSTANT_FILTER_CONDITION",
                        "severity": "WARNING",
                        "syntaxPosition": {
                          "end": {
                            "column": 23,
                            "index": 2015,
                            "line": 33
                          },
                          "start": {
                            "column": 12,
                            "index": 2004,
                            "line": 33
                          }
                        }
                      },
                      {
                        "arguments": [
                          "TRUE == FALSE",
                          "=="
                        ],
                        "message": "The expression `TRUE == FALSE` is always false because the  two arguments of == are not equal.",
                        "messageFormat": "The expression `%1$s` is always false because the  two arguments of %2$s are not equal.",
                        "messageFormatSpecifierTypes": [
                          "INPUT_QUERY_PART",
                          "OPERATOR"
                        ],
                        "notificationType": "EXPRESSION_ALWAYS_FALSE_EQUALS",
                        "severity": "WARNING",
                        "syntaxPosition": {
                          "end": {
                            "column": 24,
                            "index": 3162,
                            "line": 47
                          },
                          "start": {
                            "column": 12,
                            "index": 3150,
                            "line": 47
                          }
                        }
                      }
                    ],
                    "query": "fetch dt.entity.host\n        | filterOut isMonitoringCandidate\n          \n        | fields\n            id,\n            dt.entity.aws_availability_zone=belongs_to[dt.entity.aws_availability_zone],\n            dt.entity.azure_region=belongs_to[dt.entity.azure_region],\n            dt.entity.geoloc_site=belongs_to[dt.entity.geoloc_site],\n            dt.entity.gcp_zone=belongs_to[dt.entity.gcp_zone],\n            dt.entity.vmware_datacenter=belongs_to[dt.entity.vmware_datacenter]\n       | fieldsAdd\n       awsDataCenterName = entityName(dt.entity.aws_availability_zone),\n       azureRegionName = entityName(dt.entity.azure_region),\n       vmwareDatacenterName = entityName(dt.entity.vmware_datacenter),\n       geolocSiteName = entityName(dt.entity.geoloc_site),\n       gcpZoneName = entityName(dt.entity.gcp_zone)\n       | fields\n            dataCenter = coalesce(dt.entity.aws_availability_zone, dt.entity.azure_region, dt.entity.vmware_datacenter, dt.entity.gcp_zone, dt.entity.geoloc_site, \"NO_DATACENTER\"),\n            {coalesce(awsDataCenterName, azureRegionName, vmwareDatacenterName, gcpZoneName, geolocSiteName, \"No Data center\"), alias:dataCenterName},\n            id\n       | fields id, dataCenter, dataCenterName\n       | lookup [\n            timeseries avg(dt.host.availability), alias: availability, by:{dt.entity.host, availability.state}, filter: availability.state == \"up\"\n           | fieldsAdd available = arrayLast(availability)\n         ],\n         sourceField:id, lookupField:dt.entity.host, prefix:\"availability.\"\n       | fieldsRemove availability.dt.entity.host\n       | lookup [\n       \nfetch dt.davis.events.snapshots, from: toTimestamp(\"2025-09-02T07:09:40.389Z\")-370m, to: toTimestamp(\"2025-09-02T09:09:40.389Z\")\n  | filter in(affected_entity_types, \"dt.entity.host\") and event.type != \"OSI_GRACEFULLY_SHUTDOWN\" and event.category != \"INFO\" or (event.type == \"AVAILABILITY_EVENT\" and dt.source_entity.type == \"os:service\")\n  | dedup event.id, sort: {timestamp desc}\n  | filter true == true | fieldsAdd affected_entity_ids=arrayDistinct(arrayConcat(affected_entity_ids,toArray(dt.entity.host)))\n  | filterOut event.provider == \"ROOT_CAUSE_ANALYSIS\"\n  | filter (isNull(event.end) OR event.end \u003e= toTimestamp(\"2025-09-02T07:09:40.389Z\")) AND event.start \u003c= toTimestamp(\"2025-09-02T09:09:40.389Z\")\n\n  | fieldsAdd investigationMode = 0\n  | lookup [\n    fetch dt.davis.problems.snapshots, from: toTimestamp(\"2025-09-02T07:09:40.389Z\")-370m, to: 1m@m\n  | filter in(affected_entity_types, \"dt.entity.host\") or event.category == \"AVAILABILITY\"\n      | dedup event.id, sort:{timestamp desc}\n      | fieldsAdd investigationMode = false\n      | expand dt.davis.event_ids\n      | sort investigationMode desc, dt.davis.is_duplicate desc\n      | summarize {problems = collectArray(record(problem.id=event.id, problem.kind=event.kind, problem.start=event.start, problem.end=event.end, dt.davis.is_duplicate, investigationMode)), investigationMode = countIf(investigationMode)}, by: {dt.davis.event_ids}\n  ], sourceField: event.id, lookupField: dt.davis.event_ids, fields: {problems, investigationMode}, executionOrder:leftFirst\n  | filter true == false OR event.status == \"ACTIVE\" OR investigationMode \u003e 0\n  | expand affected_entity_ids\n  | fieldsAdd isHealthAlert = in(event.type, {\"OSI_HIGH_CPU\",\"EC2_HIGH_CPU\",\"ESXI_GUEST_CPU_LIMIT_REACHED\",\"ESXI_VM_IMPACT_HOST_CPU_SATURATION\",\"OSI_HIGH_MEMORY\",\"ESXI_VM_IMPACT_HOST_MEMORY_SATURATION\",\"OSI_SLOW_DISK\",\"OSI_LOW_DISK_SPACE\",\"OSI_DISK_LOW_INODES\"}) OR (in(event.type, {\"OSI_NIC_DROPPED_PACKETS_HIGH\",\"OSI_NIC_ERRORS_HIGH\",\"OSI_NIC_UTILIZATION_HIGH\"}) AND isNotNull(dt.entity.network_interface)) OR in(event.description, {\"OSI_UNEXPECTEDLY_UNAVAILABLE\"}) OR (in(event.type, {\"AVAILABILITY_EVENT\"}) AND in(dt.source_entity.type, {\"os:service\"})) OR (in(event.type, {\"AVAILABILITY_EVENT\"}) AND in(dt.settings.schema_id, {\"builtin:processavailability\"})) OR in(event.name, {\"UNGRACEFULLY_REBOOTED_EVENT_NAME\"})\n  | fieldsAdd\n    healthIndicators = if(isHealthAlert, record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id=affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id)),\n    customAlerts = if(not(isHealthAlert) OR isNull(isHealthAlert), record(event.id, problems, investigationMode, event.name, event.description, event.group_label, event.type, event.category, event.provider, event.start, event.end, event.status, timestamp, entity.id=affected_entity_ids, dt.entity.disk, dt.entity.host, `dt.entity.os:service`, dt.entity.network_interface, dt.source_entity.type, dt.settings.schema_id))\n  | summarize {\n    healthIndicators = arrayRemoveNulls(collectArray(healthIndicators)),\n    customAlerts = arrayRemoveNulls(collectArray(customAlerts)),\n    _activeEventsCount = countIf(event.status == \"ACTIVE\"),\n    _closedEventsCount = countIf(event.status == \"CLOSED\"),\n    investigationMode = sum(investigationMode),\n    investigationThreshold = countIf(event.status == \"ACTIVE\" AND investigationMode \u003e 0)\n  }, by: {affected_entity_ids}\n  | fieldsAdd eventsThreshold = if(_activeEventsCount \u003e 0, 1, else: if(_closedEventsCount \u003e 0, 0, else: -1))\n| fieldsAdd healthIndicators = record(problems = healthIndicators[][problems], event.id = healthIndicators[][event.id], event.status = healthIndicators[][event.status], type=\"HEALTH_INDICATOR\", affected_entity_ids)\n| fieldsAdd customAlerts = record(problems = customAlerts[][problems], event.id = customAlerts[][event.id], event.status = customAlerts[][event.status], type=\"CUSTOM_ALERT\", affected_entity_ids)\n| fields connect = arrayFlatten(array(healthIndicators, customAlerts))\n| expand connect\n| fields problemsIDs = connect[problems][][problem.id], eventId = connect[event.id], eventStatus = connect[event.status], type = connect[type], affected_entity_ids= connect[affected_entity_ids]\n| summarize alerts = collectArray(record(type, eventId, eventStatus, problemsIDs, entity = affected_entity_ids)), by: {affected_entity_ids}\n        ], sourceField: id, lookupField: affected_entity_ids, fields: {alerts}\n       | summarize {\n            {arrayRemoveNulls(arrayFlatten(collectArray(alerts))), alias: alerts},\n            {takeFirst(dataCenterName), alias: name},\n            {arraySize(collectDistinct(id)), alias: hosts},\n            {countIf(availability.available == 1), alias: monitoredHosts}\n        },\n        by:{dataCenter, alias: id}\n        | fieldsAdd monitoredPercentage = toDouble(monitoredHosts) / hosts\n        | fieldsRemove monitoredHosts\n        | fieldsAdd dataCenterType = splitString(id, \"-\")[0]\n// Filters: [dc-name-Filter]\n| filter name == \"DC-AT-CITRIX-Linz\"\n| limit 25010",
                    "queryId": "ebdb36ee-d2ef-4274-9f9d-3f914275e5b8",
                    "sampled": false,
                    "scannedBytes": 179698,
                    "scannedDataPoints": 120,
                    "scannedRecords": 5330,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "description": "Host availability state metric reported in 1 minute intervals",
                      "displayName": "Host availability",
                      "fieldName": "availability",
                      "metric.key": "dt.host.availability",
                      "unit": "count"
                    }
                  ]
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "chartSettings": {},
              "table": {
                "columnOrder": [
                  "[\"id\"]",
                  "[\"alerts\"]",
                  "[\"name\"]",
                  "[\"hosts\"]",
                  "[\"monitoredPercentage\"]",
                  "[\"dataCenterType\"]"
                ]
              },
              "thresholds": []
            }
          },
          "title": "datacenter details \u0026 datacenter missing, image: datacenter_details",
          "type": "dql"
        },
        {
          "id": "7c2343e0-5957-4cca-b941-a45368dbbae2",
          "markdown": "# Metrics_Missing",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 169,
          "id": "4fa9d85c-1524-4f14-993b-98711305f500",
          "previousFilterSegments": [],
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-7d",
                "to": "now()"
              },
              "value": "//queryId=CloudVmwareVmMemActive4\n timeseries  avg(dt.cloud.vmware.vm.mem.active), by: {dt.entity.virtualmachine, dt.security_context}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-39EDE9B0E3F6CF13\" | fields id] | fieldsAdd metricName = \"VM memory active\"\n| append[//queryId=CloudVmwareVmMemConsumed4\n timeseries  avg(dt.cloud.vmware.vm.mem.consumed), by: {dt.entity.virtualmachine, dt.security_context}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-39EDE9B0E3F6CF13\" | fields id] | fieldsAdd metricName = \"VM memory consumed\"]"
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
              "dateTime": "2025-09-01T07:15:46.507Z",
              "input": {
                "timeframe": {
                  "from": "now()-7d",
                  "to": "now()"
                },
                "value": "//queryId=CloudVmwareVmMemActive4\n timeseries  avg(dt.cloud.vmware.vm.mem.active), by: {dt.entity.virtualmachine, dt.security_context}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-39EDE9B0E3F6CF13\" | fields id] | fieldsAdd metricName = \"VM memory active\"\n| append[//queryId=CloudVmwareVmMemConsumed4\n timeseries  avg(dt.cloud.vmware.vm.mem.consumed), by: {dt.entity.virtualmachine, dt.security_context}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-39EDE9B0E3F6CF13\" | fields id] | fieldsAdd metricName = \"VM memory consumed\"]"
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
                      "end": "2025-09-01T08:00:00.000000000Z",
                      "start": "2025-08-25T07:00:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{dt.entity.virtualmachine, dt.security_context}, filter:dt.entity.virtualmachine in \n\t[\n\t\tfetch dt.entity.virtualmachine\n\t\t| fields id, parent = runs[dt.entity.host]\n\t\t| filter parent == \"HOST-39EDE9B0E3F6CF13\"\n\t\t| fields id\n\t], avg(dt.cloud.vmware.vm.mem.active)\n| fieldsAdd metricName = \"VM memory active\"\n| append \n\t[\n\t\ttimeseries by:{dt.entity.virtualmachine, dt.security_context}, filter:dt.entity.virtualmachine in \n\t\t\t[\n\t\t\t\tfetch dt.entity.virtualmachine\n\t\t\t\t| fields id, parent = runs[dt.entity.host]\n\t\t\t\t| filter parent == \"HOST-39EDE9B0E3F6CF13\"\n\t\t\t\t| fields id\n\t\t\t], avg(dt.cloud.vmware.vm.mem.consumed)\n\t\t| fieldsAdd metricName = \"VM memory consumed\"\n\t]",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 185,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "//queryId=CloudVmwareVmMemActive4\n timeseries  avg(dt.cloud.vmware.vm.mem.active), by: {dt.entity.virtualmachine, dt.security_context}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-39EDE9B0E3F6CF13\" | fields id] | fieldsAdd metricName = \"VM memory active\"\n| append[//queryId=CloudVmwareVmMemConsumed4\n timeseries  avg(dt.cloud.vmware.vm.mem.consumed), by: {dt.entity.virtualmachine, dt.security_context}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-39EDE9B0E3F6CF13\" | fields id] | fieldsAdd metricName = \"VM memory consumed\"]",
                    "queryId": "86b361e7-0b20-497b-bd19-f9053b845e6f",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 1020,
                    "scannedRecords": 10294,
                    "timezone": "Europe/Vienna"
                  },
                  "metrics": [
                    {
                      "displayName": "VM memory active",
                      "fieldName": "avg(dt.cloud.vmware.vm.mem.active)",
                      "metric.key": "dt.cloud.vmware.vm.mem.active",
                      "unit": "KiBy"
                    },
                    {
                      "displayName": "VM memory consumed",
                      "fieldName": "avg(dt.cloud.vmware.vm.mem.consumed)",
                      "metric.key": "dt.cloud.vmware.vm.mem.consumed",
                      "unit": "KiBy"
                    }
                  ]
                },
                "records": [
                  {
                    "avg(dt.cloud.vmware.vm.mem.active)": [
                      6915939.266666667,
                      6298910.777777778,
                      6777993.266666667,
                      7195559.488888889,
                      8934797.844444444,
                      11165634.685714286,
                      8707373.355555555,
                      4904537.844444444,
                      3812153.6222222224,
                      2771966.533333333,
                      3517620.4,
                      3519484.533333333,
                      2615379.3333333335,
                      1806345.2,
                      2229504,
                      1038322.2666666667,
                      965621.0666666667,
                      1124072.4,
                      924610.1333333333,
                      1027137.4666666667,
                      2181036.066666667,
                      2620971.7333333334,
                      5405989.977777778,
                      6254171.733333333,
                      6671737.488888889,
                      7473315.6,
                      6910346.822222223,
                      7734294.377777778,
                      7009146.022222222,
                      8424024.777777778,
                      7637359.488888889,
                      4682705.6,
                      4294965.111111111,
                      4613732.6,
                      4397492.711111112,
                      4382579.555555556,
                      2991934.6,
                      1810073.4666666666,
                      2374906.1333333333,
                      1892095.4,
                      1735508.2,
                      2194085,
                      1871590.0666666667,
                      1718730.9333333333,
                      1921921.8,
                      1351496.8666666667,
                      2520308.6,
                      4086181.711111111,
                      3890447.688888889,
                      4099230.9111111113,
                      3044130.1333333333,
                      4229720.688888889,
                      3413228.688888889,
                      4028393.7333333334,
                      4692025.933333334,
                      4056355.8444444444,
                      4257682.6,
                      3819610.533333333,
                      1338447.7333333334,
                      4534533.586592179,
                      1500627.822222222,
                      1036458.1333333333,
                      930202.5333333333,
                      933930.8,
                      814626.2666666667,
                      781071.8666666667,
                      838860,
                      894784,
                      2218318.933333333,
                      2318981.8666666667,
                      3073956.577777778,
                      3802833.422222222,
                      3812153.933333333,
                      3715219.3333333335,
                      4665928.488888889,
                      5411582.511111111,
                      5844061.755555555,
                      4651015.222222222,
                      4380715.155555556,
                      4317334.577777778,
                      2427101.6666666665,
                      2550134.5846153847,
                      1929378,
                      2317117.8,
                      2261194.0444444446,
                      1138985.4666666666,
                      809033.8666666667,
                      1138985.5333333334,
                      1084925.6,
                      1237784.5333333334,
                      1198637.7333333334,
                      997311.3333333334,
                      1640437.4666666666,
                      2123248.066666667,
                      2440150.533333333,
                      3929594.311111111,
                      3180212.0888888887,
                      2557591.066666667,
                      2447607.2,
                      2829755.4,
                      3937051.7333333334,
                      4725580.733333333,
                      4539166.866666666,
                      3044130.2444444443,
                      3353576.6666666665,
                      4388172.111111111,
                      4706939.444444444,
                      4733037.266666667,
                      2671304.2,
                      1504355.6,
                      1319806.4,
                      1181860.5333333334,
                      1179996.4,
                      1109159.3333333333,
                      1116615.8666666667,
                      1099838.6666666667,
                      913425.3333333334,
                      1088653.8666666667,
                      974941.7333333333,
                      1027137.4666666667,
                      1088653.8666666667,
                      1163219.2,
                      1159490.9333333333,
                      1086789.7333333334,
                      1230328,
                      1219143.2666666666,
                      1010360.2666666667,
                      820218.6666666666,
                      1075604.9333333333,
                      1152034.4,
                      978670,
                      1045778.8,
                      1040186.4,
                      939523.2,
                      891055.7333333333,
                      976805.8666666667,
                      850044.8,
                      5014418.07821229,
                      1597562.6666666667,
                      965621.0666666667,
                      881735.0666666667,
                      879870.9333333333,
                      859365.4666666667,
                      878006.8,
                      779207.7333333333,
                      872414.4,
                      850044.8,
                      956300.4,
                      950708,
                      971213.4666666667,
                      1107295.2,
                      846316.5333333333,
                      913425.3333333334,
                      1066284.2666666666,
                      900376.4,
                      967485.2,
                      671088,
                      920881.8666666667,
                      1066284.2666666666,
                      1027137.4666666667,
                      922746,
                      1096110.4,
                      1034594,
                      917153.6,
                      1720595.2,
                      2520308.488888889,
                      2164258.8,
                      4110415.8666666667,
                      3925866.8
                    ],
                    "avg(dt.cloud.vmware.vm.mem.consumed)": null,
                    "dt.entity.virtualmachine": "VIRTUALMACHINE-A4ABA2FBF2AEF59F",
                    "dt.security_context": null,
                    "interval": "3600000000000",
                    "metricName": "VM memory active",
                    "timeframe": {
                      "end": "2025-09-01T10:00:00.000000000+02:00",
                      "start": "2025-08-25T09:00:00.000000000+02:00"
                    }
                  },
                  {
                    "avg(dt.cloud.vmware.vm.mem.active)": null,
                    "avg(dt.cloud.vmware.vm.mem.consumed)": [
                      19110919.68888889,
                      19160861.155555554,
                      19160928.133333333,
                      19199184.97777778,
                      22235724.377777778,
                      24055173.085714284,
                      24028626.911111113,
                      24015503.6,
                      24005226.6,
                      24000297.02222222,
                      23994975.088888887,
                      23994818.666666668,
                      23999099.533333335,
                      23996476.155555554,
                      23978786.68888889,
                      23956712.444444444,
                      23954127.17777778,
                      23954045.666666668,
                      23954035.133333333,
                      23954040,
                      23957556.955555554,
                      23958592.666666668,
                      23963959.466666665,
                      23964423.066666666,
                      23964466.866666667,
                      23964470.244444445,
                      23981807,
                      23987449.888888888,
                      24008713.48888889,
                      24029469.466666665,
                      24030067.68888889,
                      24030129.2,
                      24030125.577777777,
                      24030123.066666666,
                      24030096.82222222,
                      24030118.755555555,
                      24029094.933333334,
                      24028066.377777778,
                      24028058.444444444,
                      24028053.733333334,
                      24028032,
                      24028040.644444443,
                      24028050.555555556,
                      24028052.17777778,
                      24028043.31111111,
                      24028157.911111113,
                      24030089.044444446,
                      24030021.888888888,
                      24030106.244444445,
                      24030101.68888889,
                      24029942.955555554,
                      24029861.8,
                      24030083.377777778,
                      24030108.4,
                      24030112.31111111,
                      24030111.866666667,
                      24030094.28888889,
                      24030108.4,
                      24028496.333333332,
                      10960068.715083798,
                      9238403.355555555,
                      9441063.688888889,
                      9441010.177777778,
                      9441308.08888889,
                      9441155.2,
                      9441418,
                      9444400.91111111,
                      9468984.4,
                      11020818.711111112,
                      11632818.244444445,
                      13216284.6,
                      14439307.022222223,
                      14921898.91111111,
                      14904848.466666667,
                      15747120.91111111,
                      17104172.733333334,
                      18527692.955555554,
                      22892733.088888887,
                      23175466.02222222,
                      23175999.68888889,
                      23176870.17777778,
                      23175265.394871794,
                      23174874.2,
                      23174836.97777778,
                      23171069.555555556,
                      23154345.533333335,
                      23158884.244444445,
                      23158890.17777778,
                      23158921.6,
                      23160741.6,
                      23162964.333333332,
                      23162904.577777777,
                      23167259.133333333,
                      23169274.666666668,
                      23168459.111111112,
                      23170341.28888889,
                      23172445.6,
                      23172843.222222224,
                      23172783.955555554,
                      23172884.377777778,
                      23172855.244444445,
                      23172231.533333335,
                      23170883.066666666,
                      23170854.2,
                      23170944.28888889,
                      23170943.71111111,
                      23170927.844444446,
                      23170928.6,
                      23170901.888888888,
                      23170804.777777776,
                      23170741.844444446,
                      23170680.133333333,
                      23170653.866666667,
                      23170653.422222223,
                      23170640.17777778,
                      23170628.02222222,
                      23170607.333333332,
                      23170610.02222222,
                      23170608.48888889,
                      23170588.844444446,
                      23170568.777777776,
                      23170575.133333333,
                      23170512.533333335,
                      23171609.888888888,
                      23172565.2,
                      23172598.333333332,
                      23172584.155555554,
                      23172567.17777778,
                      23172582.355555557,
                      23172578.755555555,
                      23172576,
                      23172581.97777778,
                      23172590.28888889,
                      23172570.777777776,
                      23172583.777777776,
                      23172565.444444444,
                      23172554.8,
                      15141554.45810056,
                      9238439.91111111,
                      10173436.555555556,
                      10173740.866666667,
                      10174321.4,
                      10174460.4,
                      10175095.48888889,
                      10175376.288888888,
                      10175416.177777778,
                      10175160.222222222,
                      10192838.711111112,
                      10236955.977777777,
                      10244572.177777778,
                      10265688.044444444,
                      10265092.244444445,
                      10265193.711111112,
                      10276633.977777777,
                      10304572.133333333,
                      10307863.622222222,
                      10319368.333333334,
                      10327317.466666667,
                      10336271.133333333,
                      10339732.222222222,
                      10340868.711111112,
                      10340973.622222222,
                      10340984.91111111,
                      10291537.104761904,
                      10940065.377777778,
                      12459253.2,
                      13025704.177777778,
                      14655949.91111111,
                      15780827.866666667
                    ],
                    "dt.entity.virtualmachine": "VIRTUALMACHINE-A4ABA2FBF2AEF59F",
                    "dt.security_context": null,
                    "interval": "3600000000000",
                    "metricName": "VM memory consumed",
                    "timeframe": {
                      "end": "2025-09-01T10:00:00.000000000+02:00",
                      "start": "2025-08-25T09:00:00.000000000+02:00"
                    }
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "avg(dt.cloud.vmware.vm.mem.active)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              168
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "avg(dt.cloud.vmware.vm.mem.consumed)": {
                        "type": "undefined"
                      },
                      "dt.entity.virtualmachine": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "undefined"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "metricName": {
                        "type": "string"
                      },
                      "timeframe": {
                        "type": "timeframe"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      1,
                      1
                    ],
                    "mappings": {
                      "avg(dt.cloud.vmware.vm.mem.active)": {
                        "type": "undefined"
                      },
                      "avg(dt.cloud.vmware.vm.mem.consumed)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              168
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "dt.entity.virtualmachine": {
                        "type": "string"
                      },
                      "dt.security_context": {
                        "type": "undefined"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "metricName": {
                        "type": "string"
                      },
                      "timeframe": {
                        "type": "timeframe"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "chartSettings": {},
              "table": {
                "columnTypeOverrides": [
                  {
                    "fields": [
                      "avg(dt.cloud.vmware.vm.mem.active)",
                      "avg(dt.cloud.vmware.vm.mem.consumed)"
                    ],
                    "id": 1756710930919,
                    "value": "sparkline"
                  }
                ]
              },
              "thresholds": []
            }
          },
          "title": "VmMemActive",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "b380352f-b94f-41b4-8ed9-eeaeb0d1da5a",
          "previousFilterSegments": [],
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
              "value": "//queryId=CloudVmwareVmMemConsumed4\n timeseries  avg(dt.cloud.vmware.vm.mem.consumed), by: {dt.entity.virtualmachine},\n filter: dt.entity.virtualmachine IN\n [fetch dt.entity.virtualmachine\n | fields id, parent=runs[dt.entity.host]\n | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
              "dateTime": "2025-08-29T10:51:04.716Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "//queryId=CloudVmwareVmMemConsumed4\n timeseries  avg(dt.cloud.vmware.vm.mem.consumed), by: {dt.entity.virtualmachine},\n filter: dt.entity.virtualmachine IN\n [fetch dt.entity.virtualmachine\n | fields id, parent=runs[dt.entity.host]\n | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
                      "end": "2025-08-29T10:52:00.000000000Z",
                      "start": "2025-08-29T08:51:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{dt.entity.virtualmachine}, filter:dt.entity.virtualmachine in \n\t[\n\t\tfetch dt.entity.virtualmachine\n\t\t| fields id, parent = runs[dt.entity.host]\n\t\t| filter parent == \"HOST-F40C1D4AF15E0765\"\n\t\t| fields id\n\t], avg(dt.cloud.vmware.vm.mem.consumed)",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 135,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "//queryId=CloudVmwareVmMemConsumed4\n timeseries  avg(dt.cloud.vmware.vm.mem.consumed), by: {dt.entity.virtualmachine},\n filter: dt.entity.virtualmachine IN\n [fetch dt.entity.virtualmachine\n | fields id, parent=runs[dt.entity.host]\n | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]",
                    "queryId": "0c2e9589-b382-4d4e-9b4d-5f6324c8b3a1",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 120,
                    "scannedRecords": 5099,
                    "timezone": "Europe/Berlin"
                  },
                  "metrics": [
                    {
                      "displayName": "VM memory consumed",
                      "fieldName": "avg(dt.cloud.vmware.vm.mem.consumed)",
                      "metric.key": "dt.cloud.vmware.vm.mem.consumed",
                      "unit": "KiBy"
                    }
                  ]
                },
                "records": [
                  {
                    "avg(dt.cloud.vmware.vm.mem.consumed)": [
                      23172884,
                      23172884,
                      23172884,
                      23172884,
                      23172884,
                      23172884,
                      23172884,
                      23172884,
                      23172882.666666668,
                      23172882.666666668,
                      23172880,
                      23172878.666666668,
                      23172882.666666668,
                      23172886.666666668,
                      23172888,
                      23172880,
                      23172884,
                      23172882.666666668,
                      23172884,
                      23172884,
                      23172882.666666668,
                      23172878.666666668,
                      23172881.333333332,
                      23172884,
                      23172884,
                      23172884,
                      23172881.333333332,
                      23172874.666666668,
                      23172872,
                      23172873.333333332,
                      23172874.666666668,
                      23172870.666666668,
                      23172868,
                      23172868,
                      23172802.666666668,
                      23172693.333333332,
                      23172714.666666668,
                      23172716,
                      23172716,
                      23172716,
                      23172716,
                      23172716,
                      23172718.666666668,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172720,
                      23172717.333333332,
                      23172712,
                      23172713.333333332,
                      23172716,
                      23172714.666666668,
                      23172708,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172704,
                      23172708,
                      23172708,
                      23172862.666666668,
                      23172928,
                      23172928,
                      23172929.333333332,
                      23172928,
                      23172930.666666668,
                      23172936,
                      23172936,
                      23172936,
                      23172934.666666668,
                      23172936,
                      23172936,
                      23172936,
                      23172937.333333332,
                      23172940,
                      23172937.333333332,
                      23172936,
                      23172929.333333332,
                      23172918.666666668,
                      23172924,
                      23172928,
                      23172936,
                      23172936,
                      23172936,
                      23172936,
                      23172934.666666668,
                      23172940,
                      23172940,
                      23172940,
                      23172940,
                      23172940,
                      23172940,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null,
                      null
                    ],
                    "dt.entity.virtualmachine": "VIRTUALMACHINE-A4ABA2FBF2AEF59F",
                    "interval": "60000000000",
                    "timeframe": {
                      "end": "2025-08-29T12:52:00.000000000+02:00",
                      "start": "2025-08-29T10:51:00.000000000+02:00"
                    }
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "avg(dt.cloud.vmware.vm.mem.consumed)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              120
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "dt.entity.virtualmachine": {
                        "type": "string"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "timeframe": {
                        "type": "timeframe"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "chartSettings": {},
              "thresholds": []
            }
          },
          "title": "VmMemConsumed",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "ece54440-3d8e-4c13-aa8e-c483d85303b8",
          "previousFilterSegments": [],
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
              "value": "//queryId=CloudVmwareVmMemCompressionRate2\n timeseries avg(dt.cloud.vmware.vm.mem.compression_rate), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
              "dateTime": "2025-08-29T10:52:21.937Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "//queryId=CloudVmwareVmMemCompressionRate2\n timeseries avg(dt.cloud.vmware.vm.mem.compression_rate), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
                      "end": "2025-08-29T10:53:00.000000000Z",
                      "start": "2025-08-29T08:52:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{dt.entity.virtualmachine}, filter:dt.entity.virtualmachine in \n\t[\n\t\tfetch dt.entity.virtualmachine\n\t\t| fields id, parent = runs[dt.entity.host]\n\t\t| filter parent == \"HOST-F40C1D4AF15E0765\"\n\t\t| fields id\n\t], avg(dt.cloud.vmware.vm.mem.compression_rate)",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 433,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "//queryId=CloudVmwareVmMemCompressionRate2\n timeseries avg(dt.cloud.vmware.vm.mem.compression_rate), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]",
                    "queryId": "5ffd9e87-1b90-43bb-ac29-61829841e0c2",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 121,
                    "scannedRecords": 5099,
                    "timezone": "Europe/Berlin"
                  },
                  "metrics": [
                    {
                      "displayName": "VM compression rate",
                      "fieldName": "avg(dt.cloud.vmware.vm.mem.compression_rate)",
                      "metric.key": "dt.cloud.vmware.vm.mem.compression_rate",
                      "unit": "KiBy/s"
                    }
                  ]
                },
                "records": [
                  {
                    "avg(dt.cloud.vmware.vm.mem.compression_rate)": [
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      null,
                      null,
                      null
                    ],
                    "dt.entity.virtualmachine": "VIRTUALMACHINE-A4ABA2FBF2AEF59F",
                    "interval": "60000000000",
                    "timeframe": {
                      "end": "2025-08-29T12:53:00.000000000+02:00",
                      "start": "2025-08-29T10:52:00.000000000+02:00"
                    }
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "avg(dt.cloud.vmware.vm.mem.compression_rate)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              120
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "dt.entity.virtualmachine": {
                        "type": "string"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "timeframe": {
                        "type": "timeframe"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "chartSettings": {},
              "thresholds": []
            }
          },
          "title": "VmMemCompressionRate",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "11df9bd2-5cf9-4bca-870a-24a4b2af14bc",
          "previousFilterSegments": [],
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
              "value": "//queryId=CloudVmwareVmMemDecompressionRate2\n timeseries avg(dt.cloud.vmware.vm.mem.decompression_rate), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
              "dateTime": "2025-08-29T10:52:36.840Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "//queryId=CloudVmwareVmMemDecompressionRate2\n timeseries avg(dt.cloud.vmware.vm.mem.decompression_rate), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
                      "end": "2025-08-29T10:53:00.000000000Z",
                      "start": "2025-08-29T08:52:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{dt.entity.virtualmachine}, filter:dt.entity.virtualmachine in \n\t[\n\t\tfetch dt.entity.virtualmachine\n\t\t| fields id, parent = runs[dt.entity.host]\n\t\t| filter parent == \"HOST-F40C1D4AF15E0765\"\n\t\t| fields id\n\t], avg(dt.cloud.vmware.vm.mem.decompression_rate)",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 146,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "//queryId=CloudVmwareVmMemDecompressionRate2\n timeseries avg(dt.cloud.vmware.vm.mem.decompression_rate), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]",
                    "queryId": "25cf9243-dabb-40a4-9896-3ce7714efea1",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 121,
                    "scannedRecords": 5099,
                    "timezone": "Europe/Berlin"
                  },
                  "metrics": [
                    {
                      "displayName": "VM decompression rate",
                      "fieldName": "avg(dt.cloud.vmware.vm.mem.decompression_rate)",
                      "metric.key": "dt.cloud.vmware.vm.mem.decompression_rate",
                      "unit": "KiBy/s"
                    }
                  ]
                },
                "records": [
                  {
                    "avg(dt.cloud.vmware.vm.mem.decompression_rate)": [
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      null,
                      null,
                      null
                    ],
                    "dt.entity.virtualmachine": "VIRTUALMACHINE-A4ABA2FBF2AEF59F",
                    "interval": "60000000000",
                    "timeframe": {
                      "end": "2025-08-29T12:53:00.000000000+02:00",
                      "start": "2025-08-29T10:52:00.000000000+02:00"
                    }
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "avg(dt.cloud.vmware.vm.mem.decompression_rate)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              120
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "dt.entity.virtualmachine": {
                        "type": "string"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "timeframe": {
                        "type": "timeframe"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "chartSettings": {},
              "thresholds": []
            }
          },
          "title": "VmMemDecompressionRate",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "fcc16a5d-dfcb-4897-aa4d-32ce807e5a74",
          "previousFilterSegments": [],
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
              "value": "//queryId=CloudVmwareVmMemSwapIn2\n timeseries avg(dt.cloud.vmware.vm.mem.swap_in), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
              "dateTime": "2025-08-29T10:53:43.252Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "//queryId=CloudVmwareVmMemSwapIn2\n timeseries avg(dt.cloud.vmware.vm.mem.swap_in), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
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
                      "end": "2025-08-29T10:54:00.000000000Z",
                      "start": "2025-08-29T08:53:00.000000000Z"
                    },
                    "canonicalQuery": "timeseries by:{dt.entity.virtualmachine}, filter:dt.entity.virtualmachine in \n\t[\n\t\tfetch dt.entity.virtualmachine\n\t\t| fields id, parent = runs[dt.entity.host]\n\t\t| filter parent == \"HOST-F40C1D4AF15E0765\"\n\t\t| fields id\n\t], avg(dt.cloud.vmware.vm.mem.swap_in)",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 138,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "//queryId=CloudVmwareVmMemSwapIn2\n timeseries avg(dt.cloud.vmware.vm.mem.swap_in), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]",
                    "queryId": "9923b84b-5671-4754-86db-36b54a303ae6",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 121,
                    "scannedRecords": 5099,
                    "timezone": "Europe/Berlin"
                  },
                  "metrics": [
                    {
                      "displayName": "VM swap in rate",
                      "fieldName": "avg(dt.cloud.vmware.vm.mem.swap_in)",
                      "metric.key": "dt.cloud.vmware.vm.mem.swap_in",
                      "unit": "KiBy/s"
                    }
                  ]
                },
                "records": [
                  {
                    "avg(dt.cloud.vmware.vm.mem.swap_in)": [
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      0,
                      null,
                      null,
                      null,
                      null
                    ],
                    "dt.entity.virtualmachine": "VIRTUALMACHINE-A4ABA2FBF2AEF59F",
                    "interval": "60000000000",
                    "timeframe": {
                      "end": "2025-08-29T12:54:00.000000000+02:00",
                      "start": "2025-08-29T10:53:00.000000000+02:00"
                    }
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "avg(dt.cloud.vmware.vm.mem.swap_in)": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              120
                            ],
                            "mappings": {
                              "element": {
                                "type": "double"
                              }
                            }
                          }
                        ]
                      },
                      "dt.entity.virtualmachine": {
                        "type": "string"
                      },
                      "interval": {
                        "type": "duration"
                      },
                      "timeframe": {
                        "type": "timeframe"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "chartSettings": {},
              "thresholds": []
            }
          },
          "title": "VmMemSwapIn",
          "type": "dql"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "c98bd387-8888-400b-ab1f-fda915450a9d",
          "previousFilterSegments": [],
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
              "value": "//queryId=CloudVmwareVmMemSwapOut2\n timeseries avg(dt.cloud.vmware.vm.mem.swap_out), by: {dt.entity.virtualmachine}, filter: dt.entity.virtualmachine IN [fetch dt.entity.virtualmachine | fields id, parent=runs[dt.entity.host] | filter parent == \"HOST-F40C1D4AF15E0765\" | fields id]"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "state": "idle",
            "visualizationSettings": {
              "autoSelectVisualization": true,
              "chartSettings": {},
              "thresholds": []
            }
          },
          "title": "VmMemSwapOut",
          "type": "dql"
        }
      ],
      "version": "7"
    })
  private = true
}
