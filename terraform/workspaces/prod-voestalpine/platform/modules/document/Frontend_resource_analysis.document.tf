resource "dynatrace_document" "Frontend_resource_analysis" {
  name      = "Frontend resource analysis"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "52": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 29
        },
        "53": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "54": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 8
        },
        "55": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 8
        },
        "59": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "60": {
          "h": 3,
          "w": 8,
          "x": 8,
          "y": 36
        },
        "61": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 36
        },
        "62": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 36
        },
        "63": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 39
        },
        "64": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 4
        },
        "68": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 4
        },
        "69": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 29
        },
        "70": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 39
        },
        "71": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 39
        },
        "72": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "73": {
          "h": 2,
          "w": 4,
          "x": 8,
          "y": 2
        },
        "74": {
          "h": 2,
          "w": 4,
          "x": 16,
          "y": 2
        },
        "75": {
          "h": 2,
          "w": 4,
          "x": 12,
          "y": 2
        },
        "76": {
          "h": 2,
          "w": 4,
          "x": 4,
          "y": 2
        },
        "77": {
          "h": 2,
          "w": 4,
          "x": 20,
          "y": 2
        },
        "78": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "79": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 4
        },
        "80": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 8
        },
        "84": {
          "h": 12,
          "w": 24,
          "x": 0,
          "y": 44
        },
        "85": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "86": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "87": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "89": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 24
        },
        "90": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 24
        },
        "91": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 21
        },
        "92": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 24
        },
        "93": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 21
        },
        "94": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 24
        },
        "95": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 21
        },
        "96": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "97": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 21
        },
        "98": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 17
        }
      },
      "settings": {},
      "tiles": {
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| makeTimeseries {\n    resCnt = count()\n  },\n  by:{ page.instance_id, name, resource}\n\n| summarize { avgRequestsPerPage = avg(resCnt[])}, by:{timeframe,interval,resource}\n| fieldsAdd value = round(arrayPercentile(avgRequestsPerPage,$Percentile:noquote),decimals:2)\n| sort value desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Number of Resource Assets by Page/View - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "recordLabel": "resource",
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                },
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1763069119968,
                "baseUnit": "count_per_request",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "value",
                "suffix": "/ asset",
                "unitCategory": "unspecified"
              },
              {
                "added": 1763069125370,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "weightMedian",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763069154569,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "weightp90",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763069154986,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "downloadMedian",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763069172520,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "downloadp90",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "53": {
          "content": "### Resource Asset\n\nAnalyze how optimized your pages are by tracking decoded size, download size, and cache utilization. This section helps identify heavy assets, inefficient caching, and opportunities to optimize load performance for better user experience.\n\n---",
          "type": "markdown"
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of resources delivered with compression to reduce transfer size and improve load speed. Goal: **≥75% compressed**",
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields total = data[`total`][]* data[`multiplicity`], optimized = data[`optimized`][] * data[`multiplicity`],\n resource = data[`resource`], timeframe = toTimeframe(data[`timeframe`]), interval = toDuration(data[`interval`])\n| fields optimized = optimized[]/total[] * 100, resource, timeframe, interval\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "multiplicity",
                  "total",
                  "optimized"
                ]
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "%  Compression"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 75,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 50,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "legend": {
              "ratio": 16
            },
            "unitsOverrides": [
              {
                "added": 1763071812901,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "optimized",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of resources served from the browser or CDN cache instead of being fetched from the network. Higher cache usage reduces load times and improves efficiency. Goal: **≥80% cached**\n",
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields total = data[`total`][]* data[`multiplicity`], cached = data[`cached`][] * data[`multiplicity`],\n resource = data[`resource`], timeframe = toTimeframe(data[`timeframe`]), interval = toDuration(data[`interval`])\n| fields cached = cached[]/total[] * 100, resource, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "multiplicity",
                  "total",
                  "cached"
                ]
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% Cache"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 80,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 65,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "legend": {
              "ratio": 16
            },
            "unitsOverrides": [
              {
                "added": 1763071812901,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cached",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| fieldsAdd  performance.fetch_start = performance.start_time + performance.fetch_start,\n    performance.response_end = performance.start_time + performance.response_end\n     \n| sort decodedSize desc\n\n| summarize {\n    resCnt = count(), \n    duration = percentile(duration,$Percentile:noquote),\n    cached = countIf(performance.delivery_type\t== \"cache\"),\n    blocking = countIf(performance.render_blocking_status),\n    optimized = countIf(decodedSize \u003e encodedSize),\n    pageWeightSum =  percentile(decodedSize,$Percentile:noquote),\n    pageDownloadSizeSum =  percentile(downloadSize,$Percentile:noquote),\n    start_time = takeFirst(start_time),\n    page.id = takeFirst(page.id),\n    page.name = takeFirst(page.name),\n    browser.name = takeFirst(browser.name),\n    device.type = takeFirst(device.type),\n    geo.country.iso_code = takeFirst(geo.country.iso_code)\n  },\n  by:{ page.instance_id, name, resource, dt.rum.application.entity, multiplicity}\n\n| fieldsAdd total = coalesce(toDouble(resCnt),0) * multiplicity, \ncached = coalesce(toDouble(cached),0) * multiplicity,\nblocking = coalesce(toDouble(blocking),0) * multiplicity,\noptimized = coalesce(toDouble(optimized),0) * multiplicity\n\n| fieldsAdd cached = cached/total * 100,\nblocking = blocking/total * 100,\ncompression = optimized/total * 100\n\n| summarize { \n    count = countDistinct(page.instance_id),\n    duration = percentile(duration,$Percentile:noquote),\n    cached = percentile(cached,$Percentile:noquote),\n    blocking = percentile(blocking,$Percentile:noquote),\n    compression = percentile(compression,$Percentile:noquote),\n    avgrequestsPerPage = percentile(resCnt,$Percentile:noquote),\n    weight = percentile(pageWeightSum,$Percentile:noquote),\n    download = percentile(pageDownloadSizeSum, $Percentile:noquote),\n    start_time = takeFirst(start_time),\n    page.instance_id = takeFirst(page.instance_id),\n    page.id = takeFirst(page.id),\n    page.name = takeFirst(page.name),\n    browser.name = takeFirst(browser.name),\n    device.type = takeFirst(device.type),\n    geo.country.iso_code = takeFirst(geo.country.iso_code)\n  },\n  by: { name, resource, dt.rum.application.entity}\n\n| summarize { \n    pageLoad = avg(count),\n    duration = percentile(duration,$Percentile:noquote),\n    cached = percentile(cached,$Percentile:noquote),\n    blocking = percentile(blocking,$Percentile:noquote),\n    compression = percentile(compression,$Percentile:noquote),\n    assetsPerPageAvg = percentile(avgrequestsPerPage,$Percentile:noquote),\n    size = percentile(weight,$Percentile:noquote),\n    download = percentile(download, $Percentile:noquote),\n    start_time = takeFirst(start_time),\n    page.instance_id = takeFirst(page.instance_id),\n    page.id = takeFirst(page.id),\n    page.name = takeFirst(page.name),\n    browser.name = takeFirst(browser.name),\n    device.type = takeFirst(device.type),\n    geo.country.iso_code = takeFirst(geo.country.iso_code)\n  },\n  by: { name, resource, dt.rum.application.entity}\n| sort start_time desc\n| fieldsAdd frontend = entityName(dt.rum.application.entity,type:\"dt.entity.application\")\n| fieldsAdd link = replaceString($PerformanceLink,\"{{APP_ID}}\",dt.rum.application.entity)\n| fieldsAdd link = replaceString(link,\"{{PAGE}}\",encodeUrl(encodeBase64(page.name)))\n| fieldsAdd link = replaceString(link,\"{{INSTANCE_ID}}\",encodeUrl(concat(page.id,\"-\",page.instance_id)))\n| fieldsAdd link = replaceString(link,\"{{FROM}}\",encodeUrl(toString(start_time-1h)))\n| fieldsAdd link = replaceString(link,\"{{TO}}\",encodeUrl(toString(start_time+1h)))\n| fieldsAdd link = concat(link,\"\u0026country=\",encodeUrl(geo.country.iso_code),\"\u0026browserName=\",encodeUrl(browser.name),\"\u0026deviceType=\",encodeUrl(device.type))\n| fieldsAdd name = concat(\"[\",name,\"]\",\"(\",link,\")\")\n| fieldsAdd frontend = concat(\"[\",frontend,\"]\",\"(\",replaceString($FrontendLink,\"{{APP_ID}}\",dt.rum.application.entity),\")\")\n\n| fields name, frontend, pageLoad, assetsPerPageAvg, duration, compression, cached, blocking, download, size, resource",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Resources by Page Grouped by Page/View",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "duration",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "duration",
                  "value": 150000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "duration",
                  "value": 500000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "size",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "size",
                  "value": 1000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "size",
                  "value": 1500000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "download",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "download",
                  "value": 1000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "download",
                  "value": 1500000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "cached",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "cached",
                  "value": 65
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "cached",
                  "value": 80
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "compression",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "compression",
                  "value": 50
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "compression",
                  "value": 75
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "blocking",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "blocking",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "blocking",
                  "value": 15
                }
              ]
            },
            "table": {
              "columnOrder": [
                "[\"name\"]",
                "[\"frontend\"]",
                "[\"resource\"]",
                "[\"pageLoad\"]",
                "[\"assetsPerPageAvg\"]",
                "[\"duration\"]",
                "[\"compression\"]",
                "[\"cached\"]",
                "[\"blocking\"]",
                "[\"download\"]",
                "[\"size\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "name",
                    "frontend"
                  ],
                  "id": 1430144.7999999998,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"asset\"]": 228.5,
                "[\"assetsPerPageAvg\"]": 181.18,
                "[\"blocking\"]": 136.5,
                "[\"cached\"]": 130,
                "[\"compression\"]": 161.2,
                "[\"download\"]": 153.96,
                "[\"duration\"]": 162.5,
                "[\"frontend\"]": 201,
                "[\"name\"]": 211.5,
                "[\"pageLoad\"]": 169.48,
                "[\"size\"]": 129.99,
                "[\"total\"]": 197.7
              },
              "hiddenColumns": [
                [
                  "dt.rum.application.entity"
                ],
                [
                  "start_time"
                ],
                [
                  "page.instance_id"
                ],
                [
                  "page.id"
                ],
                [
                  "page.name"
                ],
                [
                  "browser.name"
                ],
                [
                  "device.type"
                ],
                [
                  "geo.country.iso_code"
                ],
                [
                  "link"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "lineWrapIds": [
                [
                  "name"
                ],
                [
                  "frontend"
                ],
                [
                  "total"
                ],
                [
                  "assetsPerPageAvg"
                ],
                [
                  "duration"
                ],
                [
                  "compression"
                ],
                [
                  "cached"
                ],
                [
                  "blocking"
                ],
                [
                  "download"
                ],
                [
                  "size"
                ],
                [
                  "asset"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"duration\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1763074425722,
                "baseUnit": "count_per_request",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "assetsPerPageAvg",
                "suffix": "/asset",
                "unitCategory": "unspecified"
              },
              {
                "added": 1763074426173,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "size",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763074426524,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "download",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1765391650042,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "pageLoad",
                "suffix": "Page Loads",
                "unitCategory": "unspecified"
              },
              {
                "added": 1765391652570,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cached",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1765391684867,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "blocking",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1765391690617,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "compression",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "60": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| summarize decodedSize = percentile(decodedSize,$Percentile:noquote), by:{resource}\n| sort resource asc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Decoded Size by Resource Asset - p$Percentile",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 22
            },
            "unitsOverrides": [
              {
                "added": 1763069154569,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "decodedSize",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763069154986,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "encodedSize",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763069172520,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "downloadSize",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "61": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| summarize downloadSize = percentile(downloadSize,$Percentile:noquote), by:{resource}\n| sort resource asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Download Size by Resource Asset - p$Percentile",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "valueType": "relative"
              }
            },
            "legend": {
              "ratio": 22
            },
            "unitsOverrides": [
              {
                "added": 1763069154569,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "decodedSize",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763069154986,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "encodedSize",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1763069172520,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "downloadSize",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "62": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| summarize encodedSize = percentile(encodedSize,$Percentile:noquote), by:{resource}\n| sort resource asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Encoded Size by Resource Asset - p$Percentile",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": [
              {
                "added": 1763069154986,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "encodedSize",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "63": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| maketimeseries { encodedSize = percentile(encodedSize,$Percentile:noquote)\n  }, by:{ page.instance_id, name, resource}\n\n| summarize encodedSize = avg(encodedSize[]), by:{resource, timeframe,interval}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Encoded Size"
              }
            },
            "unitsOverrides": [
              {
                "added": 1764631204379,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "decodedSize",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1764631237574,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "encodedSize",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1764631238159,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "downloadSize",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "64": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.classifier == \"page_summary\"\n| filter $Frontend == \"*\" or dt.rum.application.entity == trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\")))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,{$UserType})\n| filter in(view.url.domain,{$UrlDomain})\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(web_vitals.largest_contentful_paint)\n\n| fieldsAdd target = toDuration(2.5 * 1000 * 1000 * 1000), miss = toDuration(2.5 * 1.6 * 1000 * 1000 * 1000)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n| makeTimeseries lcp = percentile(web_vitals.largest_contentful_paint, $Percentile:noquote)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Largest Contentful Paint"
              },
              "legend": {
                "hidden": true
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 2500000000,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 4000000000,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "legend": {
              "ratio": 11
            },
            "unitsOverrides": [
              {
                "added": 1764720527188,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "lcp",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "68": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields decodedSize = data[`decodedSize`], resource = data[`resource`], timeframe = toTimeframe(data[`timeframe`]), interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Decoded Size"
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#ECA440",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 1000000,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 1500000,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "legend": {
              "ratio": 13
            },
            "unitsOverrides": [
              {
                "added": 1764721187982,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "decodedSize",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "69": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| maketimeseries {\n    decodedSize = percentile(decodedSize,$Percentile:noquote),\n    decodedSize_scalar = percentile(decodedSize,$Percentile:noquote,scalar:true) \n  }, by:{resource}, time:start_time\n| sort decodedSize_scalar desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Resource Asset Size - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "recordLabel": "resource",
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 1764721247424,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "decodedSize_scalar",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| maketimeseries { \n    decodedSize = percentile(decodedSize,$Percentile:noquote)\n  }, by:{ page.instance_id, name, resource}\n\n| summarize decodedSize = avg(decodedSize[]), by:{resource, timeframe,interval}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "71": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(url.full)\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| maketimeseries { \n    downloadSize = percentile(downloadSize,$Percentile:noquote)\n  }, by:{ page.instance_id, name, resource}\n\n| summarize downloadSize = avg(downloadSize[]), by:{resource,timeframe,interval}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "72": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,{$UserType})\n| filter in(view.url.domain,{$UrlDomain})\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(web_vitals.largest_contentful_paint)\n\n| fieldsAdd target = toDuration(2.5 * 1000 * 1000 * 1000), miss = toDuration(2.5 * 1.6 * 1000 * 1000 * 1000)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n| summarize lcp = percentile(web_vitals.largest_contentful_paint, $Percentile:noquote)\n| fields lcp = coalesce(lcp,0s)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Largest Contentful Paint - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#2F6863",
                  "field": "lcp",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "lcp",
                  "value": 2500000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "lcp",
                  "value": 4000000000
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1765386563524,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "lcp",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "73": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData_NoGroup))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields decodedSize = data[`decodedSize_scalar`]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Decoded Size - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#2F6863",
                  "field": "decodedSize",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "decodedSize",
                  "value": 1000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "decodedSize",
                  "value": 1500000
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1765383610127,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "decodedSize",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "74": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData_NoGroup))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields total = arraySum(data[`total`])* data[`multiplicity`], optimized = arraySum(data[`optimized`]) * data[`multiplicity`] \n| summarize total = sum(total), optimized = sum(optimized)\n| fields optimized = optimized/total * 100\n| fields optimized = coalesce(optimized,0)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "% Compression - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "optimized",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "optimized",
                  "value": 50
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "optimized",
                  "value": 75
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1765383722570,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "optimized",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "75": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData_NoGroup))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields total = arraySum(data[`total`])* data[`multiplicity`], cached = arraySum(data[`cached`]) * data[`multiplicity`] \n| summarize total = sum(total), cached = sum(cached)\n| fields cached = cached/total * 100\n| fields cached = coalesce(cached,0)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "% Cached - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "cached",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "cached",
                  "value": 65
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#2F6863",
                  "field": "cached",
                  "value": 80
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1765383852978,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cached",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "76": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData_NoGroup))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields duration = data[`duration_scalar`]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Duration - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#2F6863",
                  "field": "duration",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "duration",
                  "value": 150000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "duration",
                  "value": 500000000
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1765402058609,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "77": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData_NoGroup))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields total = arraySum(data[`total`])* data[`multiplicity`], blocking = arraySum(data[`blocking`]) * data[`multiplicity`] \n| summarize total = sum(total), blocking = sum(blocking)\n| fields blocking = blocking/total * 100\n| fields blocking = coalesce(blocking,0)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "% Render Blocking - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#2F6863",
                  "field": "blocking",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#ECA440",
                  "field": "blocking",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C4233B",
                  "field": "blocking",
                  "value": 15
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1765384795579,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "blocking",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "78": {
          "content": "### Resource Optimization \u0026 Performance\nUse this dashboard to understand where large or slow-loading assets affect performance—helping you prioritize improvements that matter.",
          "type": "markdown"
        },
        "79": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields duration = coalesce(data[`duration`][],0s), resource = data[`resource`], timeframe = toTimeframe(data[`timeframe`]), interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Duration"
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#ECA440",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 150000000,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 500000000,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "legend": {
              "ratio": 14
            },
            "unitsOverrides": [
              {
                "added": 1765386913204,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "80": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Resources (scripts or stylesheets) that block page rendering and delay user experience. Goal: **≤5% of resources blocking**\n",
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields total = data[`total`][]* data[`multiplicity`], blocking = data[`blocking`][] * data[`multiplicity`],\n resource = data[`resource`], timeframe = toTimeframe(data[`timeframe`]), interval = toDuration(data[`interval`])\n| fields blocking = blocking[]/total[] * 100, resource, timeframe, interval\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% Render Blocking"
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "#2F6863",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#ECA440",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 5,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "#C4233B",
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 15,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "legend": {
              "ratio": 16
            }
          }
        },
        "84": {
          "content": "#### About this dashboard\n\nThis dashboard helps teams **optimize resource delivery and performance** for real users. It includes:\n\n- **Key KPIs:** Largest Contentful Paint (LCP), resource duration, decoded size, cache/compression coverage, render-blocking.\n- **Variables:** Enable filtering by application, geography, user type, resource type, and more.\n\n\n\n| Category            | Variable         | Description                                      |\n|----------------------|------------------|--------------------------------------------------|\n| Filtering \u0026 Scoping | Frontend         | Selects the RUM application (frontend entity).  |\n| Filtering \u0026 Scoping | Geo              | Filters by country.                             |\n| Filtering \u0026 Scoping | UserType         | Filters by user classification (e.g., anonymous, authenticated). |\n| Filtering \u0026 Scoping | UrlDomain        | Filters by page/view domain.                    |\n| Filtering \u0026 Scoping | ResourceUrl      | Filters resources by URL substring.             |\n| Filtering \u0026 Scoping | SPA              | Switches between SPA view name and page name.   |\n| Filtering \u0026 Scoping | Name             | Filters normalized page/view names.             |\n| Filtering \u0026 Scoping | Resource         | Filters by resource type (Image, Script, Style, etc.). |\n| Sampling \u0026 Limits   | ScanLimitGb      | Sets scan limit for query execution.            |\n| Sampling \u0026 Limits   | auto_sampling_ratio | Controls sampling ratio for data accuracy.     |\n| Sampling \u0026 Limits   | extrapolate      | Enables extrapolated counts based on sampling.  |\n\n\n",
          "type": "markdown"
        },
        "85": {
          "content": " ",
          "type": "markdown"
        },
        "86": {
          "content": "### Resource Performance\n\nThis section shows resource performance timings. Helps identify resource timings that are impacting user experience.\n\n---",
          "type": "markdown"
        },
        "87": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields redirect_time = data[`redirect_time_scalar`],\n  application_cache = data[`application_cache_scalar`],\n  dns_lookup = data[`dns_lookup_scalar`],\n  tcp_connect = data[`tcp_connect_scalar`],\n  tls_negotiation = data[`tls_negotiation_scalar`],\n  blocking_time = data[`blocking_time_scalar`],\n  request_duration = data[`request_duration_scalar`],\n  response_duration = data[`response_duration_scalar`],\n  value = data[`duration_scalar`],\n  resource = data[`resource`]\n| sort value desc\n| fieldsRemove value",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Resource Timings - p$Percentile",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "Resource",
                "layout": "vertical"
              },
              "legend": {
                "position": "right"
              }
            },
            "legend": {
              "ratio": 33
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765904821957,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "blocking_time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "89": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  tcp_connect = coalesce(data[`tcp_connect`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "TCP Connect"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "90": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  request_duration = coalesce(data[`request_duration`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Request Duration"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "91": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields\n  application_cache = coalesce(data[`application_cache`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Application Cache"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  response_duration = coalesce(data[`response_duration`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Response Duration"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "93": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  tls_negotiation = coalesce(data[`tls_negotiation`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "TLS Negotiation"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "94": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  dns_lookup = coalesce(data[`dns_lookup`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "DNS Lookup"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "95": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  redirect_time = coalesce(data[`redirect_time`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Redirect Time"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "96": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  duration = data[`duration`][],\n  value = data[`duration_scalar`],\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])\n| sort value desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Duration - p$Percentile",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "recordLabel": "resource",
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                },
                "upward": {
                  "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765903394484,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "value",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "97": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(string = decodeBase64ToString($KPIData))\n| parse string,\"JSON:json\"\n| fields data = json[`results`]\n| expand data\n| fields \n  blocking_time = coalesce(data[`blocking_time`][],0s),\n  resource = data[`resource`], \n  timeframe = toTimeframe(data[`timeframe`]),\n  interval = toDuration(data[`interval`])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Blocking"
              },
              "legend": {
                "hidden": true,
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765826631043,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826631977,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632170,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632332,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632476,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826632639,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765826633940,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1766001111774,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "blocking_time",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "98": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| filter isNotNull(matchesPattern(arrayLast(splitString(url.full,\".\")),\"WORD\"))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if($extrapolate==\"true\", multiplicity, else: coalesce(aggregation.count, 1))\n\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| fieldsAdd\n    performance.domain_lookup_start = performance.start_time + performance.domain_lookup_start,\n    performance.domain_lookup_end = performance.start_time + performance.domain_lookup_end,\n    performance.connect_start = performance.start_time + performance.connect_start,\n    performance.secure_connection_start = performance.start_time + performance.secure_connection_start,\n    performance.connect_end = performance.start_time + performance.connect_end,\n    performance.dom_content_loaded_event_start = performance.start_time + performance.dom_content_loaded_event_start,\n    performance.dom_content_loaded_event_end = performance.start_time + performance.dom_content_loaded_event_end,\n    performance.request_start = performance.start_time + performance.request_start,\n    performance.response_start = performance.start_time + performance.response_start,\n    performance.response_end = performance.start_time + performance.response_end,\n    performance.redirect_start = performance.start_time + performance.redirect_start,\n    performance.redirect_end = performance.start_time + performance.redirect_end,\n    performance.fetch_start = performance.start_time + performance.fetch_start,\n    performance.load_event_start = performance.start_time + performance.load_event_start,\n    performance.load_event_end = performance.start_time + performance.load_event_end,\n    redirect_time = performance.redirect_end - performance.redirect_start,\n    blocking_one = performance.fetch_start - performance.redirect_end,\n    blocking_two = performance.connect_start - performance.domain_lookup_end,\n    blocking_three = performance.request_start - performance.connect_end,\n    application_cache = performance.domain_lookup_start - performance.fetch_start,\n    dns_lookup = performance.domain_lookup_end - performance.domain_lookup_start,\n    tcp_connect = performance.secure_connection_start - performance.connect_start,\n    request_duration = performance.response_start - performance.request_start,\n    response_duration = performance.response_end - performance.response_start,\n    processing = performance.load_event_start - performance.response_end,\n    onDomContentLoaded = performance.dom_content_loaded_event_end - performance.dom_content_loaded_event_start,\n    onLoad = performance.load_event_end - performance.load_event_start,\n    completionTime = xhr.load_end - performance.response_end,\n    tls_negotiation = performance.connect_end - performance.secure_connection_start\n    \n| fieldsAdd blocking_time = coalesce(blocking_one, 0s) + coalesce(blocking_two, 0s) + coalesce(blocking_three, 0s)\n\n| sort duration desc \n\n| summarize {\n    duration = percentile(duration,$Percentile:noquote),\n    redirect_time = percentile(redirect_time,$Percentile:noquote),\n    application_cache = percentile(application_cache,$Percentile:noquote),\n    dns_lookup = percentile(dns_lookup,$Percentile:noquote),\n    tcp_connect = percentile(tcp_connect,$Percentile:noquote),\n    request_duration = percentile(request_duration,$Percentile:noquote),\n    response_duration = percentile(response_duration,$Percentile:noquote),\n    tls_negotiation = percentile(tls_negotiation,$Percentile:noquote),\n    blocking_time = percentile(blocking_time,$Percentile:noquote),\n    start_time = takeFirst(start_time),\n    page.id = takeFirst(page.id),\n    page.name = takeFirst(page.name),\n    browser.name = takeFirst(browser.name),\n    device.type = takeFirst(device.type),\n    geo.country.iso_code = takeFirst(geo.country.iso_code),\n    count = count()\n  },\n  by:{ page.instance_id, name, resource, dt.rum.application.entity}\n  \n| summarize { \n    pageLoad = countDistinct(page.instance_id),\n    duration = avg(duration),\n    redirect_time = avg(redirect_time),\n    application_cache = avg(application_cache),\n    dns_lookup = avg(dns_lookup),\n    tcp_connect = avg(tcp_connect),\n    request_duration = avg(request_duration),\n    response_duration = avg(response_duration),\n    tls_negotiation = avg(tls_negotiation),\n    blocking_time = avg(blocking_time),\n    start_time = takeFirst(start_time),\n    page.instance_id = takeFirst(page.instance_id),\n    page.id = takeFirst(page.id),\n    page.name = takeFirst(page.name),\n    browser.name = takeFirst(browser.name),\n    device.type = takeFirst(device.type),\n    geo.country.iso_code = takeFirst(geo.country.iso_code),\n    count = avg(count)\n  },\n  by: { name, resource, dt.rum.application.entity}\n  \n| summarize { \n    pageLoad = avg(pageLoad),\n    duration = avg(duration),\n    redirect_time = avg(redirect_time),\n    application_cache = avg(application_cache),\n    dns_lookup = avg(dns_lookup),\n    tcp_connect = avg(tcp_connect),\n    request_duration = avg(request_duration),\n    response_duration = avg(response_duration),\n    tls_negotiation = avg(tls_negotiation),\n    blocking_time = avg(blocking_time),\n    start_time = takeFirst(start_time),\n    page.instance_id = takeFirst(page.instance_id),\n    page.id = takeFirst(page.id),\n    page.name = takeFirst(page.name),\n    browser.name = takeFirst(browser.name),\n    device.type = takeFirst(device.type),\n    geo.country.iso_code = takeFirst(geo.country.iso_code),\n    count = avg(count)\n  },\n  by: { name, resource, dt.rum.application.entity}\n  \n| fieldsAdd duration = coalesce(duration,0s),\n  redirect_time = coalesce(redirect_time,0s),\n  application_cache = coalesce(application_cache,0s),\n  dns_lookup = coalesce(dns_lookup,0s),\n  tcp_connect = coalesce(tcp_connect,0s),\n  request_duration = coalesce(request_duration,0s),\n  response_duration = coalesce(response_duration,0s),\n  tls_negotiation = coalesce(tls_negotiation,0s),\n  blocking_time = coalesce(blocking_time,0s)\n  \n// // // | sort start_time desc\n| fieldsAdd performance_link = $PerformanceLink\n| fieldsAdd frontend = entityName(dt.rum.application.entity,type:\"dt.entity.application\")\n| fieldsAdd link = replaceString($PerformanceLink,\"{{APP_ID}}\",dt.rum.application.entity)\n| fieldsAdd link = replaceString(link,\"{{PAGE}}\",encodeUrl(encodeBase64(page.name)))\n| fieldsAdd link = replaceString(link,\"{{INSTANCE_ID}}\",encodeUrl(concat(page.id,\"-\",page.instance_id)))\n| fieldsAdd link = replaceString(link,\"{{FROM}}\",encodeUrl(toString(start_time-10m)))\n| fieldsAdd link = replaceString(link,\"{{TO}}\",encodeUrl(toString(start_time+10m)))\n| fieldsAdd link = concat(link,\"\u0026country=\",encodeUrl(geo.country.iso_code),\"\u0026browserName=\",encodeUrl(browser.name),\"\u0026deviceType=\",encodeUrl(device.type))\n| fieldsAdd name = concat(\"[\",name,\"]\",\"(\",link,\")\")\n| fieldsAdd frontend = concat(\"[\",frontend,\"]\",\"(\",replaceString($FrontendLink,\"{{APP_ID}}\",dt.rum.application.entity),\")\")\n\n| fields start_time, name, pageLoad, frontend, resource, assetsPerPageAvg=count, duration,redirect_time,application_cache\n,dns_lookup,tcp_connect,tls_negotiation,blocking_time,request_duration,response_duration",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Performance Grouped by Page/View",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "duration",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "duration",
                  "value": 150000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "duration",
                  "value": 500000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "size",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "size",
                  "value": 1000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "size",
                  "value": 1500000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "download",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "download",
                  "value": 1000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "download",
                  "value": 1500000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "cached",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "cached",
                  "value": 65
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "cached",
                  "value": 80
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "compression",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "compression",
                  "value": 50
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "compression",
                  "value": 75
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "blocking",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "blocking",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "blocking",
                  "value": 15
                }
              ]
            },
            "table": {
              "columnOrder": [
                "[\"start_time\"]",
                "[\"name\"]",
                "[\"pageLoad\"]",
                "[\"frontend\"]",
                "[\"resource\"]",
                "[\"assetsPerPageAvg\"]",
                "[\"duration\"]",
                "[\"redirect_time\"]",
                "[\"application_cache\"]",
                "[\"dns_lookup\"]",
                "[\"tcp_connect\"]",
                "[\"tls_negotiation\"]",
                "[\"blocking_time\"]",
                "[\"request_duration\"]",
                "[\"response_duration\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "name",
                    "frontend"
                  ],
                  "id": 1430144.7999999998,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"application_cache\"]": 166.78,
                "[\"asset\"]": 262.5,
                "[\"assetsPerPageAvg\"]": 149.19,
                "[\"blocking\"]": 106.5,
                "[\"blocking_time\"]": 152.18,
                "[\"cached\"]": 130,
                "[\"compression\"]": 161.2,
                "[\"count\"]": 93,
                "[\"dns_lookup\"]": 132.57,
                "[\"download\"]": 100,
                "[\"duration\"]": 128.48,
                "[\"extension\"]": 404.5,
                "[\"frontend\"]": 120,
                "[\"name\"]": 234.48,
                "[\"redirect_time\"]": 139.78,
                "[\"request_duration\"]": 187.99,
                "[\"response_duration\"]": 182.99,
                "[\"size\"]": 83,
                "[\"tcp_connect\"]": 136.08,
                "[\"tls_negotiation\"]": 173.18,
                "[\"total\"]": 197.7,
                "[\"url.full\"]": 731
              },
              "hiddenColumns": [
                [
                  "geo.country.iso_code"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "lineWrapIds": [
                [
                  "name"
                ],
                [
                  "frontend"
                ],
                [
                  "total"
                ],
                [
                  "assetsPerPageAvg"
                ],
                [
                  "duration"
                ],
                [
                  "compression"
                ],
                [
                  "cached"
                ],
                [
                  "blocking"
                ],
                [
                  "download"
                ],
                [
                  "size"
                ],
                [
                  "asset"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"duration\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1765913687059,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "redirect_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913687599,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "blocking_time",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913688057,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913688241,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application_cache",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913688384,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "dns_lookup",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913688550,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tcp_connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913688748,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "tls_negotiation",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913688936,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1765913689355,
                "baseUnit": "nanosecond",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response_duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1766092308058,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "assetsPerPageAvg",
                "suffix": "/asset",
                "unitCategory": "unspecified"
              },
              {
                "added": 1766092606216,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "pageLoad",
                "suffix": "Page Loads",
                "unitCategory": "unspecified"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": "*",
          "editable": true,
          "input": "data record (v=\"*\") \n| append [\nfetch dt.entity.application\n\n| fields v=concat(id,\": \", entity.name)\n ]",
          "key": "Frontend",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "desktop,mobile",
          "key": "Device",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "AD,AE,AF,AG,AI,AL,AM,AO,AQ,AR,AS,AT,AU,AW,AX,AZ,BA,BB,BD,BE,BF,BG,BH,BI,BJ,BL,BM,BN,BO,BQ,BR,BS,BT,BV,BW,BY,BZ,CA,CC,CD,CF,CG,CH,CI,CK,CL,CM,CN,CO,CR,CU,CV,CW,CX,CY,CZ,DE,DJ,DK,DM,DO,DZ,EC,EE,EG,EH,ER,ES,ET,FI,FJ,FK,FM,FO,FR,GA,GB,GD,GE,GF,GG,GH,GI,GL,GM,GN,GP,GQ,GR,GS,GT,GU,GW,GY,HK,HM,HN,HR,HT,HU,ID,IE,IL,IM,IN,IO,IQ,IR,IS,IT,JE,JM,JO,JP,KE,KG,KH,KI,KM,KN,KP,KR,KW,KY,KZ,LA,LB,LC,LI,LK,LR,LS,LT,LU,LV,LY,MA,MC,MD,ME,MF,MG,MH,MK,ML,MM,MN,MO,MP,MQ,MR,MS,MT,MU,MV,MW,MX,MY,MZ,NA,NC,NE,NF,NG,NI,NL,NO,NP,NR,NU,NZ,OM,PA,PE,PF,PG,PH,PK,PL,PM,PN,PR,PS,PT,PW,PY,QA,RE,RO,RS,RU,RW,SA,SB,SC,SD,SE,SG,SH,SI,SJ,SK,SL,SM,SN,SO,SR,SS,ST,SV,SX,SY,SZ,TC,TD,TF,TG,TH,TJ,TK,TL,TM,TN,TO,TR,TT,TV,TW,TZ,UA,UG,UM,US,UY,UZ,VA,VC,VE,VG,VI,VN,VU,WF,WS,YE,YT,ZA,ZM,ZW",
          "key": "Geo",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "real_user, robot",
          "key": "UserType",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "True",
          "editable": true,
          "input": "True,False",
          "key": "SPA",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch user.events\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| fields value = if($SPA:noquote,view.url.domain,else:page.url.domain)\n| dedup value\n| append [data record(value=\"\")]",
          "key": "UrlDomain",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter if($SPA:noquote,in(view.url.domain,$UrlDomain),else:in(page.url.domain,$UrlDomain))\n// | fields page.name=replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(page.name, \"UUIDSTRING\", \"UUID\"), \"(ISO8601|HTTPDATE|JSONTIMESTAMP|TIMESTAMP|TIME)\", \"TIME\"),\"IPADDR\", \"IP\"), \"'-' ALNUM{10} '-' ALNUM{5}\", \"-PODID\"), \"XDIGIT{5,}\", \"*\"), \"DIGIT\", \"*\"), \"' /' NSPACE*\", \" /URLPATH\"), \"'://' [^/ ] '/'? NSPACE*\", \"://URL\"), \"'[!dt' LD ']'\", \"\"), \"' '+\", \" \")\n| fields name = if($SPA:noquote,\nreplacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n| summarize c=count(),by: name\n| sort c desc\n| fields name\n| sort name asc\n| limit 1000\n| append [data record(name = \"\")]",
          "key": "Name",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "key": "ResourceUrl",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "True",
          "editable": true,
          "input": "True,False",
          "key": "ResourceGroup",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "data record(list = if($ResourceGroup:noquote,\narray(\"Image\",\"Font\",\"Script\",\"Style\",\"Markup\",\"Media\",\"Data\",\"PDF\",\"Security\"),else:\narray(\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\n\"heif\",\"jp2\",\"jxl\",\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\n\"fon\",\"fnt\",\"js\",\"mjs\",\"cjs\",\"worker.js\",\"css\",\"html\",\"htm\",\"xml\",\"json\",\n\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"mp4\",\"webm\",\n\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\n\"m4a\",\"opus\",\"csv\",\"tsv\",\"parquet\",\"avro\",\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\n\"lz\",\"lz4\",\"zst\",\"tar\",\"wasm\",\"manifest\",\"webmanifest\",\"map\",\"appcache\",\n\"swf\",\"cur\",\"pdf\",\"bcmap\",\"xfdf\",\"pem\",\"crt\",\"cer\",\"pfx\",\"key\",\"ics\",\"vcf\")))",
          "key": "Resource",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "75",
          "editable": true,
          "input": "50,75,90,95,99",
          "key": "Percentile",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "True",
          "editable": true,
          "input": "True,False",
          "key": "extrapolate",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "500",
          "editable": true,
          "input": "500,5000,-1",
          "key": "ScanLimitGb",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch user.events\n, from: -10m, to: now()\n, scanLimitGBytes:-1\n, samplingRatio:100\n\n// apply dashboard filter here\n// dashboard filters\n| filter if($Frontend == \"ALL\",true,else:dt.rum.application.entity == trim(substring($Frontend, from: indexOf($Frontend,\":\")+1)))\n| filter in(geo.country.iso_code,{$Geo})\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n\n| summarize spansPerMinute=count()/10*5\n\n| fieldsAdd dashboardTimeframe=toTimestamp($dt_timeframe_to)-toTimestamp($dt_timeframe_from)\n| fieldsAdd dashboardTimeframeMinutes = toDouble(dashboardTimeframe/1000/1000/1000/60)\n| fieldsAdd spansInTimeframe=spansPerMinute*dashboardTimeframeMinutes\n\n| fieldsAdd desiredSpanVolume = 150*1000\n\n// // | fieldsAdd desired_sampling_rate = bin(spansInTimeframe / desiredSpanVolume, 1)\n// // | fieldsAdd desired_sampling_rate = if(desired_sampling_rate \u003c 1, 1, else: desired_sampling_rate)\n\n| fieldsAdd raw_sampling_rate = spansInTimeframe / desiredSpanVolume\n| fieldsAdd log_sampling_rate = log10(raw_sampling_rate)\n| fieldsAdd rounded_log_sampling_rate = ceil(log_sampling_rate)\n| fieldsAdd desired_sampling_rate = power(10,rounded_log_sampling_rate)\n| fieldsAdd desired_sampling_rate = if(desired_sampling_rate \u003c 1, 1, else: if(desired_sampling_rate \u003e 10000, 10000,else:desired_sampling_rate))\n\n\n| fields desired_sampling_rate",
          "key": "auto_sampling_ratio",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "data record(link=concat(\"/ui/apps/dynatrace.experience.vitals/performance/web/{{APP_ID}}/pages/{{PAGE}}/waterfall/{{INSTANCE_ID}}?from={{FROM}}\u0026to={{TO}}\"))\n",
          "key": "PerformanceLink",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "data(record(link=\"/ui/apps/dynatrace.experience.vitals/frontends/{{APP_ID}}\"))",
          "key": "FrontendLink",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if(in($extrapolate,\"true\"), multiplicity, else: coalesce(aggregation.count, 1))\n\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| fieldsAdd\n    performance.domain_lookup_start = performance.start_time + performance.domain_lookup_start,\n    performance.domain_lookup_end = performance.start_time + performance.domain_lookup_end,\n    performance.connect_start = performance.start_time + performance.connect_start,\n    performance.secure_connection_start = performance.start_time + performance.secure_connection_start,\n    performance.connect_end = performance.start_time + performance.connect_end,\n    performance.dom_content_loaded_event_start = performance.start_time + performance.dom_content_loaded_event_start,\n    performance.dom_content_loaded_event_end = performance.start_time + performance.dom_content_loaded_event_end,\n    performance.request_start = performance.start_time + performance.request_start,\n    performance.response_start = performance.start_time + performance.response_start,\n    performance.response_end = performance.start_time + performance.response_end,\n    performance.redirect_start = performance.start_time + performance.redirect_start,\n    performance.redirect_end = performance.start_time + performance.redirect_end,\n    performance.fetch_start = performance.start_time + performance.fetch_start,\n    performance.load_event_start = performance.start_time + performance.load_event_start,\n    performance.load_event_end = performance.start_time + performance.load_event_end,\n    redirect_time = performance.redirect_end - performance.redirect_start,\n    blocking_one = performance.fetch_start - performance.redirect_end,\n    blocking_two = performance.connect_start - performance.domain_lookup_end,\n    blocking_three = performance.request_start - performance.connect_end,\n    application_cache = performance.domain_lookup_start - performance.fetch_start,\n    dns_lookup = performance.domain_lookup_end - performance.domain_lookup_start,\n    tcp_connect = performance.secure_connection_start - performance.connect_start,\n    request_duration = performance.response_start - performance.request_start,\n    response_duration = performance.response_end - performance.response_start,\n    processing = performance.load_event_start - performance.response_end,\n    onDomContentLoaded = performance.dom_content_loaded_event_end - performance.dom_content_loaded_event_start,\n    onLoad = performance.load_event_end - performance.load_event_start,\n    completionTime = xhr.load_end - performance.response_end,\n    tls_negotiation = performance.connect_end - performance.secure_connection_start\n    \n| fieldsAdd blocking_time = coalesce(blocking_one, 0s) + coalesce(blocking_two, 0s) + coalesce(blocking_three, 0s)\n\n// | fieldsAdd duration = performance.response_end - performance.fetch_start\n| maketimeseries duration = percentile(duration,$Percentile:noquote),\n  duration_scalar = percentile(duration,$Percentile:noquote,scalar:true),\n  redirect_time = percentile(redirect_time,$Percentile:noquote),\n  redirect_time_scalar = percentile(redirect_time,$Percentile:noquote,scalar:true),\n  application_cache = percentile(application_cache,$Percentile:noquote),\n  application_cache_scalar = percentile(application_cache,$Percentile:noquote,scalar:true),\n  dns_lookup = percentile(dns_lookup,$Percentile:noquote),\n  dns_lookup_scalar = percentile(dns_lookup,$Percentile:noquote,scalar:true),\n  tcp_connect = percentile(tcp_connect,$Percentile:noquote),\n  tcp_connect_scalar = percentile(tcp_connect,$Percentile:noquote,scalar:true),\n  request_duration = percentile(request_duration,$Percentile:noquote),\n  request_duration_scalar = percentile(request_duration,$Percentile:noquote,scalar:true),\n  response_duration = percentile(response_duration,$Percentile:noquote),\n  response_duration_scalar = percentile(response_duration,$Percentile:noquote,scalar:true),\n  tls_negotiation = percentile(tls_negotiation,$Percentile:noquote),\n  tls_negotiation_scalar = percentile(tls_negotiation,$Percentile:noquote,scalar:true),\n  decodedSize = percentile(decodedSize,$Percentile:noquote),\n  decodedSize_scalar = percentile(decodedSize,$Percentile:noquote,scalar:true),\n  blocking_time = percentile(blocking_time,$Percentile:noquote),\n  blocking_time_scalar = percentile(blocking_time,$Percentile:noquote,scalar:true),\n  total = count(),\n  cached = countIf(performance.delivery_type\t== \"cache\"),\n  optimized = countIf(decodedSize \u003e encodedSize),\n  blocking = countIf(performance.render_blocking_status), by:{multiplicity,resource}\n  \n| summarize records = collectArray(record(duration,duration_scalar,redirect_time,application_cache,application_cache_scalar,dns_lookup,dns_lookup_scalar,\n  tcp_connect,tcp_connect_scalar,request_duration,request_duration_scalar,response_duration,response_duration_scalar,tls_negotiation,\n  tls_negotiation_scalar,blocking_time,blocking_time_scalar,decodedSize,decodedSize_scalar,total,cached,\n  optimized,blocking,resource,timeframe,interval,multiplicity))\n  \n| fields records = if(isNull(records),\n  array(record( duration = array(0s),\n    duration_scalar = 0,\n    redirect_time = array(0s),\n    redirect_time_scalar = 0,\n    application_cache = array(0s),\n    application_cache_scalar = 0,\n    dns_lookup = array(0s),\n    dns_lookup_scalar = 0,\n    tcp_connect = array(0s),\n    tcp_connect_scalar = 0,\n    request_duration = array(0s),\n    request_duration_scalar = 0,\n    response_duration = array(0s),\n    response_duration_scalar = 0,\n    tls_negotiation = array(0s),\n    tls_negotiation_scalar = 0,\n    blocking_time = array(0s),\n    blocking_time_scalar = 0,\n    decodedSize = array(0),\n    decodedSize_scalar = 0,\n    total = array(0),\n    cached = array(0),\n    optimized = array(0),\n    blocking = array(0),\n    resource = \"N/A\",\n    timeframe = timeframe(from:$dt_timeframe_from,to:$dt_timeframe_to),\n    interval = duration(6000000,\"ns\"),\n    multiplicity = 1)),else:records)\n    \n| fields string = encodeBase64(concat(\"{\\\"results\\\":\", tostring(arrayflatten(records)),\"}\"))",
          "key": "KPIData",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch user.events, scanLimitGBytes:$ScanLimitGb:noquote, samplingRatio:$auto_sampling_ratio:noquote\n| filter characteristics.has_request and isNotNull(url.full)\n| filter if(stringLength($ResourceUrl) == 0,true,else:if(contains(url.full,$ResourceUrl),true,else:false))\n| filter in($Frontend,\"*\") or in(dt.rum.application.entity,trim(substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))))\n| filter if(isNull(geo.country.iso_code),true,else:in(geo.country.iso_code,{$Geo}))\n| filter in(dt.rum.user_type,$UserType)\n| filter in(view.url.domain,$UrlDomain)\n| filter in(device.type,{$Device})\n| filter if($SPA:noquote,\n  in(replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name)\n  ,else:in(replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"),$Name))\n| fieldsAdd name = if($SPA:noquote,\n  replacePattern(view.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\")\n  ,else:replacePattern(page.name,\"(UUIDSTRING|[0-9a-zA-Z-_+=.,:]{38,1000}|[0-9]{4,1000})\",\":uuid:\"))\n  \n| fieldsAdd decodedSize = coalesce(performance.decoded_body_size,0)\n| fieldsAdd encodedSize = coalesce(performance.encoded_body_size,0)\n| fieldsAdd downloadSize = coalesce(performance.transfer_size,0)\n\n| fieldsAdd sampling.probability = (power(2, 56) - coalesce(sampling.threshold, 0)) * power(2, -56)\n| fieldsAdd sampling.multiplicity = 1/sampling.probability\n| fieldsAdd multiplicity = coalesce(sampling.multiplicity, 1)\n                         * coalesce(aggregation.count, 1)\n                         * dt.system.sampling_ratio\n| fieldsAdd multiplicity = if(in($extrapolate,\"true\"), multiplicity, else: coalesce(aggregation.count, 1))\n\n\n| fieldsAdd extension = arrayLast(splitString(arrayLast(splitString(url.path,\"/\")),\".\"))\n| fieldsAdd resource = if($ResourceGroup:noquote,\nif(in(extension,{\"jpg\",\"jpeg\",\"png\",\"gif\",\"webp\",\"svg\",\"avif\",\"bmp\",\"ico\",\"tiff\",\"heic\",\"heif\",\"jp2\",\"jxl\"}), \"Image\",else:\nif(in(extension,{\"woff\",\"woff2\",\"ttf\",\"otf\",\"eot\",\"sfnt\",\"pfb\",\"pfm\",\"fon\",\"fnt\"}), \"Font\", else:\nif(in(extension,{\"js\",\"mjs\",\"cjs\",\"worker.js\"}), \"Script\",else:\nif(in(extension,{\"css\"}), \"Style\",else:\nif(in(extension,{\"html\",\"htm\",\"xml\"}), \"Markup\",else:\nif(in(extension,{\"json\",\"json5\",\"ndjson\",\"yaml\",\"yml\",\"ini\",\"properties\",\"toml\",\"csv\",\"tsv\",\"parquet\",\"avro\"}), \"Data\",else:\nif(in(extension,{\"mp4\",\"webm\",\"m3u8\",\"ts\",\"mov\",\"mkv\",\"f4v\",\"3gp\",\"mp3\",\"ogg\",\"wav\",\"aac\",\"flac\",\"m4a\",\"opus\"}), \"Media\",else:\nif(in(extension,{\"zip\",\"gz\",\"br\",\"xz\",\"bz2\",\"lz\",\"lz4\",\"zst\",\"tar\"}), \"Compressed\",else:\nif(in(extension,{\"pdf\",\"bcmap\",\"xfdf\"}), \"PDF\",else:\nif(in(extension,{\"pem\",\"crt\",\"cer\",\"pfx\",\"key\"}), \"Security\")))))))))), else:extension)\n| filter in(resource, $Resource)\n\n| lookup [\n    fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_w3c_navigation_timings\n    | sort start_time asc\n    | fieldsAdd page.instance_id = if(\n       (\n         (parse(dt.rum.schema_version, \"INT:major\") \u003e 0)\n         or\n         (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n       ), page.instance_id, else: page.id)\n    | summarize instanceLoadEnd = takeFirst(performance.load_event_end), by: { page.instance_id, dt.rum.browser.session_id }\n],\n  lookupField: page.instance_id,\n  fields: { instanceLoadEnd }\n| filter performance.start_time \u003c= instanceLoadEnd\n\n| fieldsAdd\n    performance.domain_lookup_start = performance.start_time + performance.domain_lookup_start,\n    performance.domain_lookup_end = performance.start_time + performance.domain_lookup_end,\n    performance.connect_start = performance.start_time + performance.connect_start,\n    performance.secure_connection_start = performance.start_time + performance.secure_connection_start,\n    performance.connect_end = performance.start_time + performance.connect_end,\n    performance.dom_content_loaded_event_start = performance.start_time + performance.dom_content_loaded_event_start,\n    performance.dom_content_loaded_event_end = performance.start_time + performance.dom_content_loaded_event_end,\n    performance.request_start = performance.start_time + performance.request_start,\n    performance.response_start = performance.start_time + performance.response_start,\n    performance.response_end = performance.start_time + performance.response_end,\n    performance.redirect_start = performance.start_time + performance.redirect_start,\n    performance.redirect_end = performance.start_time + performance.redirect_end,\n    performance.fetch_start = performance.start_time + performance.fetch_start,\n    performance.load_event_start = performance.start_time + performance.load_event_start,\n    performance.load_event_end = performance.start_time + performance.load_event_end,\n    redirect_time = performance.redirect_end - performance.redirect_start,\n    blocking_one = performance.fetch_start - performance.redirect_end,\n    blocking_two = performance.connect_start - performance.domain_lookup_end,\n    blocking_three = performance.request_start - performance.connect_end,\n    application_cache = performance.domain_lookup_start - performance.fetch_start,\n    dns_lookup = performance.domain_lookup_end - performance.domain_lookup_start,\n    tcp_connect = performance.secure_connection_start - performance.connect_start,\n    request_duration = performance.response_start - performance.request_start,\n    response_duration = performance.response_end - performance.response_start,\n    processing = performance.load_event_start - performance.response_end,\n    onDomContentLoaded = performance.dom_content_loaded_event_end - performance.dom_content_loaded_event_start,\n    onLoad = performance.load_event_end - performance.load_event_start,\n    completionTime = xhr.load_end - performance.response_end,\n    tls_negotiation = performance.connect_end - performance.secure_connection_start\n    \n| fieldsAdd blocking_time = coalesce(blocking_one, 0s) + coalesce(blocking_two, 0s) + coalesce(blocking_three, 0s)\n\n// | fieldsAdd duration = performance.response_end - performance.fetch_start\n| maketimeseries duration = percentile(duration,$Percentile:noquote),\n  duration_scalar = percentile(duration,$Percentile:noquote,scalar:true),\n  redirect_time = percentile(redirect_time,$Percentile:noquote),\n  redirect_time_scalar = percentile(redirect_time,$Percentile:noquote,scalar:true),\n  application_cache = percentile(application_cache,$Percentile:noquote),\n  application_cache_scalar = percentile(application_cache,$Percentile:noquote,scalar:true),\n  dns_lookup = percentile(dns_lookup,$Percentile:noquote),\n  dns_lookup_scalar = percentile(dns_lookup,$Percentile:noquote,scalar:true),\n  tcp_connect = percentile(tcp_connect,$Percentile:noquote),\n  tcp_connect_scalar = percentile(tcp_connect,$Percentile:noquote,scalar:true),\n  request_duration = percentile(request_duration,$Percentile:noquote),\n  request_duration_scalar = percentile(request_duration,$Percentile:noquote,scalar:true),\n  response_duration = percentile(response_duration,$Percentile:noquote),\n  response_duration_scalar = percentile(response_duration,$Percentile:noquote,scalar:true),\n  tls_negotiation = percentile(tls_negotiation,$Percentile:noquote),\n  tls_negotiation_scalar = percentile(tls_negotiation,$Percentile:noquote,scalar:true),\n  decodedSize = percentile(decodedSize,$Percentile:noquote),\n  decodedSize_scalar = percentile(decodedSize,$Percentile:noquote,scalar:true),\n  blocking_time = percentile(blocking_time,$Percentile:noquote),\n  blocking_time_scalar = percentile(blocking_time,$Percentile:noquote,scalar:true),\n  total = count(),\n  cached = countIf(performance.delivery_type\t== \"cache\"),\n  optimized = countIf(decodedSize \u003e encodedSize),\n  blocking = countIf(performance.render_blocking_status), by:{multiplicity}\n  \n| summarize records = collectArray(record(duration,duration_scalar,redirect_time,application_cache,application_cache_scalar,dns_lookup,dns_lookup_scalar,\n  tcp_connect,tcp_connect_scalar,request_duration,request_duration_scalar,response_duration,response_duration_scalar,tls_negotiation,\n  tls_negotiation_scalar,blocking_time,blocking_time_scalar,decodedSize,decodedSize_scalar,total,cached,\n  optimized,blocking,timeframe,interval,multiplicity))\n  \n| fields records = if(isNull(records),\n  array(record( duration = array(0s),\n    duration_scalar = 0s,\n    redirect_time = array(0s),\n    redirect_time_scalar = 0s,\n    application_cache = array(0s),\n    application_cache_scalar = 0s,\n    dns_lookup = array(0s),\n    dns_lookup_scalar = 0s,\n    tcp_connect = array(0s),\n    tcp_connect_scalar = 0s,\n    request_duration = array(0s),\n    request_duration_scalar = 0s,\n    response_duration = array(0s),\n    response_duration_scalar = 0s,\n    tls_negotiation = array(0s),\n    tls_negotiation_scalar = 0s,\n    blocking_time = array(0s),\n    blocking_time_scalar = 0s,\n    decodedSize = array(0),\n    decodedSize_scalar = 0s,\n    total = array(0),\n    cached = array(0),\n    optimized = array(0),\n    blocking = array(0),\n    timeframe = timeframe(from:$dt_timeframe_from,to:$dt_timeframe_to),\n    interval = duration(6000000,\"ns\"),\n    multiplicity = 1)),else:records)\n    \n| fields string = encodeBase64(concat(\"{\\\"results\\\":\", tostring(arrayflatten(records)),\"}\"))",
          "key": "KPIData_NoGroup",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.experience.vitals.frontend-resource-analysis"
  # private = false
}
