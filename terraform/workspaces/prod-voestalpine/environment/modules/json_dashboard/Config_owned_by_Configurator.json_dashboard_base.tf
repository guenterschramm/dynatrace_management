resource "dynatrace_json_dashboard" "Config_owned_by_Configurator" {
  contents = jsonencode({
      "dashboardMetadata": {
        "name": "Config",
        "owner": "Configurator"
      },
      "tiles": [
        {
          "bounds": {
            "height": 152,
            "left": 152,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "{\"selection\":{\"swaps\":[{\"from\":\"$${mz.name}\",\"to\":\"SAP_TPI\"},{\"from\":\"$${mz.nameenc}\",\"to\":\"SAP_TPI\"},{\"from\":\"$${mz.id}\",\"to\":\"-884827829289534552\"},{\"from\":\"$${app.name}\",\"to\":\"SAP_Gui_TPI\"},{\"from\":\"$${app.nameenc}\",\"to\":\"SAP_Gui_TPI\"},{\"from\":\"$${app.id}\",\"to\":\"CUSTOM_APPLICATION-4D64D21BA28541F0\"},{\"from\":\"70dcf798-755e-4a80-8c11-1319c96ef229\",\"to\":\"bbbbbbbb-a001-a008-0000-000000000001\"},{\"from\":\"$${url}\",\"to\":\"https://uqy31769.live.dynatrace.com\"},{\"from\":\"fc230898-e75c-4dd9-bd0d-370268989245\",\"to\":\"bbbbbbbb-a001-a008-0001-000000000001\",\"wrap\":false},{\"from\":\"b232880e-3c52-4b41-8f9e-5d0761c1c1f9\",\"to\":\"bbbbbbbb-a001-a008-0002-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000001\",\"to\":\"bbbbbbbb-a001-a008-0003-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000002\",\"to\":\"bbbbbbbb-a001-a008-0004-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000000\",\"to\":\"bbbbbbbb-a001-a008-0005-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 304,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "0000-0000-000000000003\",\"to\":\"bbbbbbbb-a001-a008-0006-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000004\",\"to\":\"bbbbbbbb-a001-a008-0007-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000005\",\"to\":\"bbbbbbbb-a001-a008-0008-000000000001\",\"wrap\":false},{\"from\":\"b232880e-3c52-4b41-8f9e-5d0761c1c1f9\",\"to\":\"bbbbbbbb-a001-a008-0009-000000000001\",\"wrap\":false},{\"from\":\"c219a17d-f0f6-4de6-bfe0-25fcdee26877\",\"to\":\"bbbbbbbb-a001-a008-0010-000000000001\",\"wrap\":false},{\"from\":\"fc230898-e75c-4dd9-bd0d-370268989245\",\"to\":\"bbbbbbbb-a001-a008-0011-000000000001\",\"wrap\":false},{\"from\":\"c219a17d-f0f6-4de6-bfe0-25fcdee26877\",\"to\":\"bbbbbbbb-a001-a008-0012-000000000001\",\"wrap\":false},{\"from\":\"92455549-3320-423b-afb9-c9c90ddd8f3d\",\"to\":\"bbbbbbbb-a001-a008-0013-000000000001\",\"wrap\":false},{\"from\":\"92455549-3320-423b-afb9-c9c90ddd8f3d\",\"to\":\"bbbbbbbb-a001-a008-0014-000000000001\",\"wrap\":false},{\"from\":\"973217cf-79e6-4fcc-b763-980a8fd0abca\",\"to\":\"bbbbbbbb-a001-a008-0015-",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 456,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "000000000001\",\"wrap\":false},{\"from\":\"973217cf-79e6-4fcc-b763-980a8fd0abca\",\"to\":\"bbbbbbbb-a001-a008-0016-000000000001\",\"wrap\":false},{\"from\":\"f148f73f-47bb-4a74-854d-591dd4e39613\",\"to\":\"bbbbbbbb-a001-a008-0017-000000000001\",\"wrap\":false},{\"from\":\"f148f73f-47bb-4a74-854d-591dd4e39613\",\"to\":\"bbbbbbbb-a001-a008-0018-000000000001\",\"wrap\":false},{\"from\":\"933abfb3-03ca-4159-808c-dad6a6d2b033\",\"to\":\"bbbbbbbb-a001-a008-0019-000000000001\",\"wrap\":false},{\"from\":\"933abfb3-03ca-4159-808c-dad6a6d2b033\",\"to\":\"bbbbbbbb-a001-a008-0020-000000000001\",\"wrap\":false},{\"from\":\"e4bb76f9-f609-49cc-b378-fa922f2c30df\",\"to\":\"bbbbbbbb-a001-a008-0021-000000000001\",\"wrap\":false},{\"from\":\"e4bb76f9-f609-49cc-b378-fa922f2c30df\",\"to\":\"bbbbbbbb-a001-a008-0022-000000000001\",\"wrap\":false},{\"from\":\"d2572aae-af3f-4f5f-8402-349d247911fb\",\"to\":\"bbbbbbbb-a001-a008-0023-000000000001\",\"wrap\":false},{\"from\":\"d2572aae-af3f-4f5f-8402-349d247911fb\",\"to\":\"bbbbbbbb-a001-a008-0024-000000000001\",\"wrap\":false},{\"from\":\"ba6b72fc-4351-4a6",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 608,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "a-a32c-009576020262\",\"to\":\"bbbbbbbb-a001-a008-0025-000000000001\",\"wrap\":false},{\"from\":\"ba6b72fc-4351-4a6a-a32c-009576020262\",\"to\":\"bbbbbbbb-a001-a008-0026-000000000001\",\"wrap\":false},{\"from\":\"f0cbb1b3-22e6-4430-800c-320b0474afc8\",\"to\":\"bbbbbbbb-a001-a008-0027-000000000001\",\"wrap\":false},{\"from\":\"f0cbb1b3-22e6-4430-800c-320b0474afc8\",\"to\":\"bbbbbbbb-a001-a008-0028-000000000001\",\"wrap\":false},{\"from\":\"1a5212d3-6588-46b1-a211-4acb867c1e64\",\"to\":\"bbbbbbbb-a001-a008-0029-000000000001\",\"wrap\":false},{\"from\":\"1a5212d3-6588-46b1-a211-4acb867c1e64\",\"to\":\"bbbbbbbb-a001-a008-0030-000000000001\",\"wrap\":false},{\"from\":\"cd3bd6f7-e089-4fcf-90ce-5849d4f89dd3\",\"to\":\"bbbbbbbb-a001-a008-0031-000000000001\",\"wrap\":false},{\"from\":\"cd3bd6f7-e089-4fcf-90ce-5849d4f89dd3\",\"to\":\"bbbbbbbb-a001-a008-0032-000000000001\",\"wrap\":false},{\"from\":\"97b6c03b-9b0e-487d-a7ab-4130bef8b836\",\"to\":\"bbbbbbbb-a001-a008-0033-000000000001\",\"wrap\":false},{\"from\":\"97b6c03b-9b0e-487d-a7ab-4130bef8b836\",\"to\":\"bbbbbbbb-a001-a008-0034-000",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 760,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "000000001\",\"wrap\":false},{\"from\":\"b2a0f517-562e-48e6-b195-6dc838e13250\",\"to\":\"bbbbbbbb-a001-a008-0035-000000000001\",\"wrap\":false},{\"from\":\"b2a0f517-562e-48e6-b195-6dc838e13250\",\"to\":\"bbbbbbbb-a001-a008-0036-000000000001\",\"wrap\":false},{\"from\":\"dd1bfdfb-d975-413e-850a-64a32eea77ec\",\"to\":\"bbbbbbbb-a001-a008-0037-000000000001\",\"wrap\":false},{\"from\":\"dd1bfdfb-d975-413e-850a-64a32eea77ec\",\"to\":\"bbbbbbbb-a001-a008-0038-000000000001\",\"wrap\":false},{\"from\":\"898a2c39-ca6a-4cf9-ae6a-59d7896c21f4\",\"to\":\"bbbbbbbb-a001-a008-0039-000000000001\",\"wrap\":false},{\"from\":\"898a2c39-ca6a-4cf9-ae6a-59d7896c21f4\",\"to\":\"bbbbbbbb-a001-a008-0040-000000000001\",\"wrap\":false},{\"from\":\"5ff8bb92-ebe8-4858-8d72-87eee3cb59dd\",\"to\":\"bbbbbbbb-a001-a008-0041-000000000001\",\"wrap\":false},{\"from\":\"5ff8bb92-ebe8-4858-8d72-87eee3cb59dd\",\"to\":\"bbbbbbbb-a001-a008-0042-000000000001\",\"wrap\":false},{\"from\":\"7e4b029a-4dd4-49bc-bad0-d5f7f0c51324\",\"to\":\"bbbbbbbb-a001-a008-0043-000000000001\",\"wrap\":false},{\"from\":\"7e4b029a-4dd4-49bc-b",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 912,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "ad0-d5f7f0c51324\",\"to\":\"bbbbbbbb-a001-a008-0044-000000000001\",\"wrap\":false}],\"config\":{\"persona\":[\"a001\",\"a003\"],\"\":\"Done\",\"usecase\":\"a008\",\"workflowName\":\"SAP ECC (Extension)\",\"workflowStatus\":\"Early Adopter\",\"githubUser\":\"popecruzdt\",\"githubRepo\":\"BizOpsConfiguratorPacks\",\"githubPath\":\"\",\"overviewDB\":\"SAP ECC - Application Cockpit.json\",\"readme\":\"SAP ECC README.md\",\"blogURL\":\"\",\"addBackButtons\":true,\"powerups\":false,\"swaps\":[{\"from\":\"$${mz.name}\",\"to\":\"SAP_TPI\"},{\"from\":\"$${mz.nameenc}\",\"to\":\"SAP_TPI\"},{\"from\":\"$${mz.id}\",\"to\":\"-884827829289534552\"},{\"from\":\"$${app.name}\",\"to\":\"SAP_Gui_TPI\"},{\"from\":\"$${app.nameenc}\",\"to\":\"SAP_Gui_TPI\"},{\"from\":\"$${app.id}\",\"to\":\"CUSTOM_APPLICATION-4D64D21BA28541F0\"},{\"from\":\"70dcf798-755e-4a80-8c11-1319c96ef229\",\"to\":\"bbbbbbbb-a001-a008-0000-000000000001\"},{\"from\":\"$${url}\",\"to\":\"https://uqy31769.live.dynatrace.com\"},{\"from\":\"fc230898-e75c-4dd9-bd0d-370268989245\",\"to\":\"bbbbbbbb-a001-a008-0001-000000000001\",\"wrap\":false},{\"from\":\"b232880e-3c52-4b41-8f9e-5d",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1064,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "0761c1c1f9\",\"to\":\"bbbbbbbb-a001-a008-0002-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000001\",\"to\":\"bbbbbbbb-a001-a008-0003-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000002\",\"to\":\"bbbbbbbb-a001-a008-0004-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000000\",\"to\":\"bbbbbbbb-a001-a008-0005-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000003\",\"to\":\"bbbbbbbb-a001-a008-0006-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000004\",\"to\":\"bbbbbbbb-a001-a008-0007-000000000001\",\"wrap\":false},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000005\",\"to\":\"bbbbbbbb-a001-a008-0008-000000000001\",\"wrap\":false},{\"from\":\"b232880e-3c52-4b41-8f9e-5d0761c1c1f9\",\"to\":\"bbbbbbbb-a001-a008-0009-000000000001\",\"wrap\":false},{\"from\":\"c219a17d-f0f6-4de6-bfe0-25fcdee26877\",\"to\":\"bbbbbbbb-a001-a008-0010-000000000001\",\"wrap\":false},{\"from\":\"fc230898-e75c-4dd9-bd0d-370268989245\",\"to\":\"bbbbbbbb-a001-a008-0011-000000000001",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1216,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "\",\"wrap\":false},{\"from\":\"c219a17d-f0f6-4de6-bfe0-25fcdee26877\",\"to\":\"bbbbbbbb-a001-a008-0012-000000000001\",\"wrap\":false},{\"from\":\"92455549-3320-423b-afb9-c9c90ddd8f3d\",\"to\":\"bbbbbbbb-a001-a008-0013-000000000001\",\"wrap\":false},{\"from\":\"92455549-3320-423b-afb9-c9c90ddd8f3d\",\"to\":\"bbbbbbbb-a001-a008-0014-000000000001\",\"wrap\":false},{\"from\":\"973217cf-79e6-4fcc-b763-980a8fd0abca\",\"to\":\"bbbbbbbb-a001-a008-0015-000000000001\",\"wrap\":false},{\"from\":\"973217cf-79e6-4fcc-b763-980a8fd0abca\",\"to\":\"bbbbbbbb-a001-a008-0016-000000000001\",\"wrap\":false},{\"from\":\"f148f73f-47bb-4a74-854d-591dd4e39613\",\"to\":\"bbbbbbbb-a001-a008-0017-000000000001\",\"wrap\":false},{\"from\":\"f148f73f-47bb-4a74-854d-591dd4e39613\",\"to\":\"bbbbbbbb-a001-a008-0018-000000000001\",\"wrap\":false},{\"from\":\"933abfb3-03ca-4159-808c-dad6a6d2b033\",\"to\":\"bbbbbbbb-a001-a008-0019-000000000001\",\"wrap\":false},{\"from\":\"933abfb3-03ca-4159-808c-dad6a6d2b033\",\"to\":\"bbbbbbbb-a001-a008-0020-000000000001\",\"wrap\":false},{\"from\":\"e4bb76f9-f609-49cc-b378-fa922",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1368,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "f2c30df\",\"to\":\"bbbbbbbb-a001-a008-0021-000000000001\",\"wrap\":false},{\"from\":\"e4bb76f9-f609-49cc-b378-fa922f2c30df\",\"to\":\"bbbbbbbb-a001-a008-0022-000000000001\",\"wrap\":false},{\"from\":\"d2572aae-af3f-4f5f-8402-349d247911fb\",\"to\":\"bbbbbbbb-a001-a008-0023-000000000001\",\"wrap\":false},{\"from\":\"d2572aae-af3f-4f5f-8402-349d247911fb\",\"to\":\"bbbbbbbb-a001-a008-0024-000000000001\",\"wrap\":false},{\"from\":\"ba6b72fc-4351-4a6a-a32c-009576020262\",\"to\":\"bbbbbbbb-a001-a008-0025-000000000001\",\"wrap\":false},{\"from\":\"ba6b72fc-4351-4a6a-a32c-009576020262\",\"to\":\"bbbbbbbb-a001-a008-0026-000000000001\",\"wrap\":false},{\"from\":\"f0cbb1b3-22e6-4430-800c-320b0474afc8\",\"to\":\"bbbbbbbb-a001-a008-0027-000000000001\",\"wrap\":false},{\"from\":\"f0cbb1b3-22e6-4430-800c-320b0474afc8\",\"to\":\"bbbbbbbb-a001-a008-0028-000000000001\",\"wrap\":false},{\"from\":\"1a5212d3-6588-46b1-a211-4acb867c1e64\",\"to\":\"bbbbbbbb-a001-a008-0029-000000000001\",\"wrap\":false},{\"from\":\"1a5212d3-6588-46b1-a211-4acb867c1e64\",\"to\":\"bbbbbbbb-a001-a008-0030-000000000001\",\"",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1520,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "wrap\":false},{\"from\":\"cd3bd6f7-e089-4fcf-90ce-5849d4f89dd3\",\"to\":\"bbbbbbbb-a001-a008-0031-000000000001\",\"wrap\":false},{\"from\":\"cd3bd6f7-e089-4fcf-90ce-5849d4f89dd3\",\"to\":\"bbbbbbbb-a001-a008-0032-000000000001\",\"wrap\":false},{\"from\":\"97b6c03b-9b0e-487d-a7ab-4130bef8b836\",\"to\":\"bbbbbbbb-a001-a008-0033-000000000001\",\"wrap\":false},{\"from\":\"97b6c03b-9b0e-487d-a7ab-4130bef8b836\",\"to\":\"bbbbbbbb-a001-a008-0034-000000000001\",\"wrap\":false},{\"from\":\"b2a0f517-562e-48e6-b195-6dc838e13250\",\"to\":\"bbbbbbbb-a001-a008-0035-000000000001\",\"wrap\":false},{\"from\":\"b2a0f517-562e-48e6-b195-6dc838e13250\",\"to\":\"bbbbbbbb-a001-a008-0036-000000000001\",\"wrap\":false},{\"from\":\"dd1bfdfb-d975-413e-850a-64a32eea77ec\",\"to\":\"bbbbbbbb-a001-a008-0037-000000000001\",\"wrap\":false},{\"from\":\"dd1bfdfb-d975-413e-850a-64a32eea77ec\",\"to\":\"bbbbbbbb-a001-a008-0038-000000000001\",\"wrap\":false},{\"from\":\"898a2c39-ca6a-4cf9-ae6a-59d7896c21f4\",\"to\":\"bbbbbbbb-a001-a008-0039-000000000001\",\"wrap\":false},{\"from\":\"898a2c39-ca6a-4cf9-ae6a-59d7896c",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1672,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "21f4\",\"to\":\"bbbbbbbb-a001-a008-0040-000000000001\",\"wrap\":false},{\"from\":\"5ff8bb92-ebe8-4858-8d72-87eee3cb59dd\",\"to\":\"bbbbbbbb-a001-a008-0041-000000000001\",\"wrap\":false},{\"from\":\"5ff8bb92-ebe8-4858-8d72-87eee3cb59dd\",\"to\":\"bbbbbbbb-a001-a008-0042-000000000001\",\"wrap\":false},{\"from\":\"7e4b029a-4dd4-49bc-bad0-d5f7f0c51324\",\"to\":\"bbbbbbbb-a001-a008-0043-000000000001\",\"wrap\":false},{\"from\":\"7e4b029a-4dd4-49bc-bad0-d5f7f0c51324\",\"to\":\"bbbbbbbb-a001-a008-0044-000000000001\",\"wrap\":false}],\"id\":\"bbbbbbbb-a001-a008-0000-000000000001\",\"oldId\":\"70dcf798-755e-4a80-8c11-1319c96ef229\",\"subids\":[{\"from\":\"fc230898-e75c-4dd9-bd0d-370268989245\",\"to\":\"bbbbbbbb-a001-a008-0001-000000000001\"},{\"from\":\"b232880e-3c52-4b41-8f9e-5d0761c1c1f9\",\"to\":\"bbbbbbbb-a001-a008-0002-000000000001\"},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000001\",\"to\":\"bbbbbbbb-a001-a008-0003-000000000001\"},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000002\",\"to\":\"bbbbbbbb-a001-a008-0004-000000000001\"},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000000",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1824,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "\",\"to\":\"bbbbbbbb-a001-a008-0005-000000000001\"},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000003\",\"to\":\"bbbbbbbb-a001-a008-0006-000000000001\"},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000004\",\"to\":\"bbbbbbbb-a001-a008-0007-000000000001\"},{\"from\":\"bbbbbbbb-0001-0000-0000-000000000005\",\"to\":\"bbbbbbbb-a001-a008-0008-000000000001\"},{\"from\":\"b232880e-3c52-4b41-8f9e-5d0761c1c1f9\",\"to\":\"bbbbbbbb-a001-a008-0009-000000000001\"},{\"from\":\"c219a17d-f0f6-4de6-bfe0-25fcdee26877\",\"to\":\"bbbbbbbb-a001-a008-0010-000000000001\"},{\"from\":\"fc230898-e75c-4dd9-bd0d-370268989245\",\"to\":\"bbbbbbbb-a001-a008-0011-000000000001\"},{\"from\":\"c219a17d-f0f6-4de6-bfe0-25fcdee26877\",\"to\":\"bbbbbbbb-a001-a008-0012-000000000001\"},{\"from\":\"92455549-3320-423b-afb9-c9c90ddd8f3d\",\"to\":\"bbbbbbbb-a001-a008-0013-000000000001\"},{\"from\":\"92455549-3320-423b-afb9-c9c90ddd8f3d\",\"to\":\"bbbbbbbb-a001-a008-0014-000000000001\"},{\"from\":\"973217cf-79e6-4fcc-b763-980a8fd0abca\",\"to\":\"bbbbbbbb-a001-a008-0015-000000000001\"},{\"from\":\"973217cf-79e6-4fcc-b763",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 1976,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "-980a8fd0abca\",\"to\":\"bbbbbbbb-a001-a008-0016-000000000001\"},{\"from\":\"f148f73f-47bb-4a74-854d-591dd4e39613\",\"to\":\"bbbbbbbb-a001-a008-0017-000000000001\"},{\"from\":\"f148f73f-47bb-4a74-854d-591dd4e39613\",\"to\":\"bbbbbbbb-a001-a008-0018-000000000001\"},{\"from\":\"933abfb3-03ca-4159-808c-dad6a6d2b033\",\"to\":\"bbbbbbbb-a001-a008-0019-000000000001\"},{\"from\":\"933abfb3-03ca-4159-808c-dad6a6d2b033\",\"to\":\"bbbbbbbb-a001-a008-0020-000000000001\"},{\"from\":\"e4bb76f9-f609-49cc-b378-fa922f2c30df\",\"to\":\"bbbbbbbb-a001-a008-0021-000000000001\"},{\"from\":\"e4bb76f9-f609-49cc-b378-fa922f2c30df\",\"to\":\"bbbbbbbb-a001-a008-0022-000000000001\"},{\"from\":\"d2572aae-af3f-4f5f-8402-349d247911fb\",\"to\":\"bbbbbbbb-a001-a008-0023-000000000001\"},{\"from\":\"d2572aae-af3f-4f5f-8402-349d247911fb\",\"to\":\"bbbbbbbb-a001-a008-0024-000000000001\"},{\"from\":\"ba6b72fc-4351-4a6a-a32c-009576020262\",\"to\":\"bbbbbbbb-a001-a008-0025-000000000001\"},{\"from\":\"ba6b72fc-4351-4a6a-a32c-009576020262\",\"to\":\"bbbbbbbb-a001-a008-0026-000000000001\"},{\"from\":\"f0cbb1b3-2",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 2128,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "2e6-4430-800c-320b0474afc8\",\"to\":\"bbbbbbbb-a001-a008-0027-000000000001\"},{\"from\":\"f0cbb1b3-22e6-4430-800c-320b0474afc8\",\"to\":\"bbbbbbbb-a001-a008-0028-000000000001\"},{\"from\":\"1a5212d3-6588-46b1-a211-4acb867c1e64\",\"to\":\"bbbbbbbb-a001-a008-0029-000000000001\"},{\"from\":\"1a5212d3-6588-46b1-a211-4acb867c1e64\",\"to\":\"bbbbbbbb-a001-a008-0030-000000000001\"},{\"from\":\"cd3bd6f7-e089-4fcf-90ce-5849d4f89dd3\",\"to\":\"bbbbbbbb-a001-a008-0031-000000000001\"},{\"from\":\"cd3bd6f7-e089-4fcf-90ce-5849d4f89dd3\",\"to\":\"bbbbbbbb-a001-a008-0032-000000000001\"},{\"from\":\"97b6c03b-9b0e-487d-a7ab-4130bef8b836\",\"to\":\"bbbbbbbb-a001-a008-0033-000000000001\"},{\"from\":\"97b6c03b-9b0e-487d-a7ab-4130bef8b836\",\"to\":\"bbbbbbbb-a001-a008-0034-000000000001\"},{\"from\":\"b2a0f517-562e-48e6-b195-6dc838e13250\",\"to\":\"bbbbbbbb-a001-a008-0035-000000000001\"},{\"from\":\"b2a0f517-562e-48e6-b195-6dc838e13250\",\"to\":\"bbbbbbbb-a001-a008-0036-000000000001\"},{\"from\":\"dd1bfdfb-d975-413e-850a-64a32eea77ec\",\"to\":\"bbbbbbbb-a001-a008-0037-000000000001\"},{\"from",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 2280,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "\":\"dd1bfdfb-d975-413e-850a-64a32eea77ec\",\"to\":\"bbbbbbbb-a001-a008-0038-000000000001\"},{\"from\":\"898a2c39-ca6a-4cf9-ae6a-59d7896c21f4\",\"to\":\"bbbbbbbb-a001-a008-0039-000000000001\"},{\"from\":\"898a2c39-ca6a-4cf9-ae6a-59d7896c21f4\",\"to\":\"bbbbbbbb-a001-a008-0040-000000000001\"},{\"from\":\"5ff8bb92-ebe8-4858-8d72-87eee3cb59dd\",\"to\":\"bbbbbbbb-a001-a008-0041-000000000001\"},{\"from\":\"5ff8bb92-ebe8-4858-8d72-87eee3cb59dd\",\"to\":\"bbbbbbbb-a001-a008-0042-000000000001\"},{\"from\":\"7e4b029a-4dd4-49bc-bad0-d5f7f0c51324\",\"to\":\"bbbbbbbb-a001-a008-0043-000000000001\"},{\"from\":\"7e4b029a-4dd4-49bc-bad0-d5f7f0c51324\",\"to\":\"bbbbbbbb-a001-a008-0044-000000000001\"}]},\"persona\":{\"name\":\"Ops\",\"prefix\":\"a001\"},\"usecase\":{\"name\":\"Platform Overview\",\"bizAnalytics\":false,\"prefix\":\"a008\"},\"workflow\":{\"name\":\"SAP ECC (Extension).cwf.json\",\"path\":\"SAP ECC (Extension).cwf.json\",\"sha\":\"ea287e596cfd25b30d7edfd958526de3f0df5477\",\"size\":3852,\"url\":\"https://api.github.com/repos/popecruzdt/BizOpsConfiguratorPacks/contents/SAP%20ECC%20(",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 2432,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "Extension).cwf.json?ref=main\",\"html_url\":\"https://github.com/popecruzdt/BizOpsConfiguratorPacks/blob/main/SAP%20ECC%20(Extension).cwf.json\",\"git_url\":\"https://api.github.com/repos/popecruzdt/BizOpsConfiguratorPacks/git/blobs/ea287e596cfd25b30d7edfd958526de3f0df5477\",\"download_url\":\"https://raw.githubusercontent.com/popecruzdt/BizOpsConfiguratorPacks/main/SAP%20ECC%20(Extension).cwf.json\",\"type\":\"file\",\"_links\":{\"self\":\"https://api.github.com/repos/popecruzdt/BizOpsConfiguratorPacks/contents/SAP%20ECC%20(Extension).cwf.json?ref=main\",\"git\":\"https://api.github.com/repos/popecruzdt/BizOpsConfiguratorPacks/git/blobs/ea287e596cfd25b30d7edfd958526de3f0df5477\",\"html\":\"https://github.com/popecruzdt/BizOpsConfiguratorPacks/blob/main/SAP%20ECC%20(Extension).cwf.json\"},\"repo\":{\"owner\":\"popecruzdt\",\"repo\":\"BizOpsConfiguratorPacks\",\"path\":\"\",\"success\":true},\"file\":{\"html\":\"\u003cdiv id=\\\"workflow\\\"\u003e\u003cinput type=\\\"hidden\\\" id=\\\"workflowConfigJSON\\\" value=\\\"{\u0026quot;persona\u0026quot;:[\u0026quot;a001\u0026quot;,\u0026quot;a00",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 2584,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "3\u0026quot;],\u0026quot;\u0026quot;:\u0026quot;Done\u0026quot;,\u0026quot;usecase\u0026quot;:\u0026quot;a008\u0026quot;,\u0026quot;workflowName\u0026quot;:\u0026quot;SAP ECC (Extension)\u0026quot;,\u0026quot;workflowStatus\u0026quot;:\u0026quot;Early Adopter\u0026quot;,\u0026quot;githubUser\u0026quot;:\u0026quot;popecruzdt\u0026quot;,\u0026quot;githubRepo\u0026quot;:\u0026quot;BizOpsConfiguratorPacks\u0026quot;,\u0026quot;githubPath\u0026quot;:\u0026quot;\u0026quot;,\u0026quot;overviewDB\u0026quot;:\u0026quot;SAP ECC - Application Cockpit.json\u0026quot;,\u0026quot;readme\u0026quot;:\u0026quot;SAP ECC README.md\u0026quot;,\u0026quot;blogURL\u0026quot;:\u0026quot;\u0026quot;,\u0026quot;addBackButtons\u0026quot;:true,\u0026quot;powerups\u0026quot;:false}\\\"\u003e\\n        \u003cdiv class=\\\"workflowPage activePage\\\"\u003e\u003cdiv class=\\\"workflowSections\\\"\u003e\\n        \u003cdiv class=\\\"workflowSection\\\" tabindex=\\\"0\\\"\u003e\\n            \u003cdiv class=\\\"workflowSectionPopup hidden\\\"\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionAddInput\\\"\u003e+\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionDelete\\\"\u003e❌\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSect",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 2736,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "ionUp\\\"\u003e🔼\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionDown\\\"\u003e🔽\u003c/a\u003e\u003c/div\u003e\\n            \u003c/div\u003e\\n            \u003ch3 contenteditable=\\\"true\\\"\u003eOverview\u003c/h3\u003e\\n            \\n        \u003cdiv class=\\\"workflowInput\\\" tabindex=\\\"0\\\"\u003e\\n                    \u003cdiv class=\\\"workflowInputPopup hidden\\\"\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputEdit\\\"\u003e✏️\u003c/a\u003e\u003c/div\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDelete\\\"\u003e❌\u003c/a\u003e\u003c/div\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputUp\\\"\u003e🔼\u003c/a\u003e\u003c/div\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDown\\\"\u003e🔽\u003c/a\u003e\u003c/div\u003e\\n                    \u003c/div\u003e\\n                    \u003cdiv class=\\\"inputHeader\\\" contenteditable=\\\"true\\\"\u003eManagement Zone\u003c/div\u003e\\n                    \u003cdiv class=\\\"userInput\\\"\u003e\u003cselect class=\\\"workflowSelect\\\" disabled=\\\"\\\" required=\\\"required\\\"\u003e\u003c/select\u003e\u003cinput type=\\\"hidden\\\" class=\\\"",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 2888,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "apiQuery\\\" value=\\\"/api/config/v1/managementZones\\\"\u003e\u003cinput type=\\\"hidden\\\" class=\\\"apiResultSlicer\\\" value=\\\"values:{id:name}\\\"\u003e\u003c/div\u003e\\n                    \u003cdiv class=\\\"transform\\\"\u003e$${\u003cspan contenteditable=\\\"true\\\"\u003emz\u003c/span\u003e}\u003c/div\u003e\\n                \u003c/div\u003e\u003cdiv class=\\\"workflowInput\\\" tabindex=\\\"0\\\"\u003e\\n                    \u003cdiv class=\\\"workflowInputPopup hidden\\\"\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputEdit\\\"\u003e✏️\u003c/a\u003e\u003c/div\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDelete\\\"\u003e❌\u003c/a\u003e\u003c/div\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputUp\\\"\u003e🔼\u003c/a\u003e\u003c/div\u003e\\n                        \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDown\\\"\u003e🔽\u003c/a\u003e\u003c/div\u003e\\n                    \u003c/div\u003e\\n                    \u003cdiv class=\\\"inputHeader\\\" contenteditable=\\\"true\\\"\u003eApplication:\u003c/div\u003e\\n                    \u003cdiv class=\\\"userInput\\\"\u003e\u003cselect class=\\\"workflowSelect\\\" disabled=\\\"\\\" required=\\\"required\\\"\u003e\u003c/s",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 3040,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "elect\u003e\u003cinput type=\\\"hidden\\\" class=\\\"apiQuery\\\" value=\\\"/api/v1/entity/applications?includeDetails=false\\\"\u003e\u003cinput type=\\\"hidden\\\" class=\\\"apiResultSlicer\\\" value=\\\"{entityId:displayName}\\\"\u003e\u003c/div\u003e\\n                    \u003cdiv class=\\\"transform\\\"\u003e$${\u003cspan contenteditable=\\\"true\\\"\u003eapp\u003c/span\u003e}\u003c/div\u003e\\n                \u003c/div\u003e\u003c/div\u003e\\n    \u003c/div\u003e\u003c/div\u003e\u003c/div\u003e\",\"config\":{\"persona\":[\"a001\",\"a003\"],\"\":\"Done\",\"usecase\":\"a008\",\"workflowName\":\"SAP ECC (Extension)\",\"workflowStatus\":\"Early Adopter\",\"githubUser\":\"popecruzdt\",\"githubRepo\":\"BizOpsConfiguratorPacks\",\"githubPath\":\"\",\"overviewDB\":\"SAP ECC - Application Cockpit.json\",\"readme\":\"SAP ECC README.md\",\"blogURL\":\"\",\"addBackButtons\":true,\"powerups\":false}},\"success\":true,\"tags\":[\"Configurator\",\"SAP ECC\"]},\"owner\":\"christoph.kaltenboeck@voestalpine.com\",\"shared\":\"true\",\"published\":\"true\"}}",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 152,
            "left": 3192,
            "top": 0,
            "width": 152
          },
          "configured": true,
          "markdown": "",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.Config_owned_by_Configurator.id}"
}


resource "dynatrace_dashboard_sharing" "Config_owned_by_Configurator" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.Config_owned_by_Configurator.id}"
  # preset     = false
}


resource "dynatrace_json_dashboard_base" "Config_owned_by_Configurator" {
  # contents = ""
}
