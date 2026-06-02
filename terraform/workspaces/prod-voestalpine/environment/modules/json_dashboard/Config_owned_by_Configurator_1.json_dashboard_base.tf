resource "dynatrace_json_dashboard" "Config_owned_by_Configurator_1" {
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
          "markdown": "{\"selection\":{\"swaps\":[{\"from\":\"$${overviewName}\",\"to\":\"SAP TPI RFC Overview\"},{\"from\":\"$${autotag}\",\"to\":\"Push Config\"},{\"from\":\"$${autotag.key}\",\"to\":\"\"},{\"from\":\"$${autotag.name}\",\"to\":\"\"},{\"from\":\"$${autotag.type}\",\"to\":\"Autotag\"},{\"from\":\"188f43c5-99c3-483d-8b6a-4d666508c373\",\"to\":\"bbbbbbbb-a001-a008-0000-2\"},{\"from\":\"$${url}\",\"to\":\"https://uqy31769.live.dynatrace.com\"},{\"from\":\"588f3383-089c-4809-91aa-dbe4e883adb6\",\"to\":\"bbbbbbbb-a001-a008-0001-2\",\"wrap\":false},{\"from\":\"acf68f36-cec0-4970-9b59-8d9c15fe485f\",\"to\":\"bbbbbbbb-a001-a008-0002-2\",\"wrap\":false},{\"from\":\"0629d9ba-a358-4bf6-a22d-da929013a5d6\",\"to\":\"bbbbbbbb-a001-a008-0003-2\",\"wrap\":false},{\"from\":\"cd9a89cf-8295-44b3-aead-664cd6290410\",\"to\":\"bbbbbbbb-a001-a008-0004-2\",\"wrap\":false},{\"from\":\"364e4a53-640d-44b9-acfa-176a4ca6ac7f\",\"to\":\"bbbbbbbb-a001-a008-0005-2\",\"wrap\":false},{\"from\":\"f4fd653b-31f9-4515-9665-26707a981cb0\",\"to\":\"bbbbbbbb-a001-a008-0006-2\",\"wrap\":false},{\"from\":\"9a21e213-7481-4fc4-875c-a52ccda08117\",\"to\":\"bbbbbbbb-a",
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
          "markdown": "001-a008-0007-2\",\"wrap\":false},{\"from\":\"facd8907-ae07-419a-b58b-d8397cd0d9c9\",\"to\":\"bbbbbbbb-a001-a008-0008-2\",\"wrap\":false},{\"from\":\"b43b3b8c-7dfe-4cb3-80b1-f83cd7995104\",\"to\":\"bbbbbbbb-a001-a008-0009-2\",\"wrap\":false},{\"from\":\"d1931b1a-fce8-4366-8c0d-944580ca15eb\",\"to\":\"bbbbbbbb-a001-a008-0010-2\",\"wrap\":false},{\"from\":\"9d1ba9c8-70e9-412f-8b44-eba24605e1f4\",\"to\":\"bbbbbbbb-a001-a008-0011-2\",\"wrap\":false},{\"from\":\"aa1cd76d-92ca-4c86-9468-a97b7bd3e9d8\",\"to\":\"bbbbbbbb-a001-a008-0012-2\",\"wrap\":false},{\"from\":\"26536526-97ac-49e1-95c9-e2e4b2e66c46\",\"to\":\"bbbbbbbb-a001-a008-0013-2\",\"wrap\":false},{\"from\":\"da9be39f-cea5-4d3a-9f7b-323e56f18eff\",\"to\":\"bbbbbbbb-a001-a008-0014-2\",\"wrap\":false},{\"from\":\"9058df71-1888-4152-b81d-eae2092407f7\",\"to\":\"bbbbbbbb-a001-a008-0015-2\",\"wrap\":false},{\"from\":\"d536d191-fc72-4708-9010-54fde75dd319\",\"to\":\"bbbbbbbb-a001-a008-0016-2\",\"wrap\":false},{\"from\":\"b8907259-c1ae-4e87-a423-5a4e88d06197\",\"to\":\"bbbbbbbb-a001-a008-0017-2\",\"wrap\":false},{\"from\":\"318551b6-d9cd-4464-",
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
          "markdown": "813e-07f45a10ebad\",\"to\":\"bbbbbbbb-a001-a008-0018-2\",\"wrap\":false},{\"from\":\"b8a91806-ec11-4441-991e-1327d4f50f88\",\"to\":\"bbbbbbbb-a001-a008-0019-2\",\"wrap\":false},{\"from\":\"cc8ab771-47a8-4056-ac24-fd93346ccbb1\",\"to\":\"bbbbbbbb-a001-a008-0020-2\",\"wrap\":false},{\"from\":\"492f6c3c-cdf6-43c7-a6f1-3c65823c658f\",\"to\":\"bbbbbbbb-a001-a008-0021-2\",\"wrap\":false},{\"from\":\"93f6c4ea-7e35-4e8a-97d6-d7881e0f0368\",\"to\":\"bbbbbbbb-a001-a008-0022-2\",\"wrap\":false},{\"from\":\"800f0f83-ced6-40f4-831c-4bc41778bf6b\",\"to\":\"bbbbbbbb-a001-a008-0023-2\",\"wrap\":false},{\"from\":\"afb94afa-69f5-4b74-95a3-153aa7b389c7\",\"to\":\"bbbbbbbb-a001-a008-0024-2\",\"wrap\":false},{\"from\":\"d77cc9ac-7b98-4b23-89bd-ee775f20fbf2\",\"to\":\"bbbbbbbb-a001-a008-0025-2\",\"wrap\":false},{\"from\":\"585c4d4f-966f-46d7-ad09-64cc26e482bb\",\"to\":\"bbbbbbbb-a001-a008-0026-2\",\"wrap\":false},{\"from\":\"1544dd4b-c076-49a1-be86-fda2514842cf\",\"to\":\"bbbbbbbb-a001-a008-0027-2\",\"wrap\":false},{\"from\":\"6639085c-3900-4fe2-a5dc-e59fb3f581ec\",\"to\":\"bbbbbbbb-a001-a008-0028-2\",\"wrap\":",
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
          "markdown": "false},{\"from\":\"ac43f920-0afd-423a-b2b2-d960342e88cd\",\"to\":\"bbbbbbbb-a001-a008-0029-2\",\"wrap\":false},{\"from\":\"ee95786e-c8b6-4b72-a0c0-fa55ec9e9f1c\",\"to\":\"bbbbbbbb-a001-a008-0030-2\",\"wrap\":false}],\"config\":{\"persona\":[\"a001\",\"a003\"],\"\":\"Done\",\"usecase\":\"a008\",\"workflowName\":\"SAP RFC\",\"workflowStatus\":\"Early Adopter\",\"githubUser\":\"popecruzdt\",\"githubRepo\":\"BizOpsConfiguratorPacks\",\"githubPath\":\"\",\"overviewDB\":\"SAP RFC - Overview.json\",\"readme\":\"SAP RFC README.md\",\"blogURL\":\"\",\"addBackButtons\":false,\"powerups\":false,\"swaps\":[{\"from\":\"$${overviewName}\",\"to\":\"SAP TPI RFC Overview\"},{\"from\":\"$${autotag}\",\"to\":\"Push Config\"},{\"from\":\"$${autotag.key}\",\"to\":\"\"},{\"from\":\"$${autotag.name}\",\"to\":\"\"},{\"from\":\"$${autotag.type}\",\"to\":\"Autotag\"},{\"from\":\"188f43c5-99c3-483d-8b6a-4d666508c373\",\"to\":\"bbbbbbbb-a001-a008-0000-2\"},{\"from\":\"$${url}\",\"to\":\"https://uqy31769.live.dynatrace.com\"},{\"from\":\"588f3383-089c-4809-91aa-dbe4e883adb6\",\"to\":\"bbbbbbbb-a001-a008-0001-2\",\"wrap\":false},{\"from\":\"acf68f36-cec0-4970-",
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
          "markdown": "9b59-8d9c15fe485f\",\"to\":\"bbbbbbbb-a001-a008-0002-2\",\"wrap\":false},{\"from\":\"0629d9ba-a358-4bf6-a22d-da929013a5d6\",\"to\":\"bbbbbbbb-a001-a008-0003-2\",\"wrap\":false},{\"from\":\"cd9a89cf-8295-44b3-aead-664cd6290410\",\"to\":\"bbbbbbbb-a001-a008-0004-2\",\"wrap\":false},{\"from\":\"364e4a53-640d-44b9-acfa-176a4ca6ac7f\",\"to\":\"bbbbbbbb-a001-a008-0005-2\",\"wrap\":false},{\"from\":\"f4fd653b-31f9-4515-9665-26707a981cb0\",\"to\":\"bbbbbbbb-a001-a008-0006-2\",\"wrap\":false},{\"from\":\"9a21e213-7481-4fc4-875c-a52ccda08117\",\"to\":\"bbbbbbbb-a001-a008-0007-2\",\"wrap\":false},{\"from\":\"facd8907-ae07-419a-b58b-d8397cd0d9c9\",\"to\":\"bbbbbbbb-a001-a008-0008-2\",\"wrap\":false},{\"from\":\"b43b3b8c-7dfe-4cb3-80b1-f83cd7995104\",\"to\":\"bbbbbbbb-a001-a008-0009-2\",\"wrap\":false},{\"from\":\"d1931b1a-fce8-4366-8c0d-944580ca15eb\",\"to\":\"bbbbbbbb-a001-a008-0010-2\",\"wrap\":false},{\"from\":\"9d1ba9c8-70e9-412f-8b44-eba24605e1f4\",\"to\":\"bbbbbbbb-a001-a008-0011-2\",\"wrap\":false},{\"from\":\"aa1cd76d-92ca-4c86-9468-a97b7bd3e9d8\",\"to\":\"bbbbbbbb-a001-a008-0012-2\",\"wrap\":",
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
          "markdown": "false},{\"from\":\"26536526-97ac-49e1-95c9-e2e4b2e66c46\",\"to\":\"bbbbbbbb-a001-a008-0013-2\",\"wrap\":false},{\"from\":\"da9be39f-cea5-4d3a-9f7b-323e56f18eff\",\"to\":\"bbbbbbbb-a001-a008-0014-2\",\"wrap\":false},{\"from\":\"9058df71-1888-4152-b81d-eae2092407f7\",\"to\":\"bbbbbbbb-a001-a008-0015-2\",\"wrap\":false},{\"from\":\"d536d191-fc72-4708-9010-54fde75dd319\",\"to\":\"bbbbbbbb-a001-a008-0016-2\",\"wrap\":false},{\"from\":\"b8907259-c1ae-4e87-a423-5a4e88d06197\",\"to\":\"bbbbbbbb-a001-a008-0017-2\",\"wrap\":false},{\"from\":\"318551b6-d9cd-4464-813e-07f45a10ebad\",\"to\":\"bbbbbbbb-a001-a008-0018-2\",\"wrap\":false},{\"from\":\"b8a91806-ec11-4441-991e-1327d4f50f88\",\"to\":\"bbbbbbbb-a001-a008-0019-2\",\"wrap\":false},{\"from\":\"cc8ab771-47a8-4056-ac24-fd93346ccbb1\",\"to\":\"bbbbbbbb-a001-a008-0020-2\",\"wrap\":false},{\"from\":\"492f6c3c-cdf6-43c7-a6f1-3c65823c658f\",\"to\":\"bbbbbbbb-a001-a008-0021-2\",\"wrap\":false},{\"from\":\"93f6c4ea-7e35-4e8a-97d6-d7881e0f0368\",\"to\":\"bbbbbbbb-a001-a008-0022-2\",\"wrap\":false},{\"from\":\"800f0f83-ced6-40f4-831c-4bc41778bf6b\",\"to\":",
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
          "markdown": "\"bbbbbbbb-a001-a008-0023-2\",\"wrap\":false},{\"from\":\"afb94afa-69f5-4b74-95a3-153aa7b389c7\",\"to\":\"bbbbbbbb-a001-a008-0024-2\",\"wrap\":false},{\"from\":\"d77cc9ac-7b98-4b23-89bd-ee775f20fbf2\",\"to\":\"bbbbbbbb-a001-a008-0025-2\",\"wrap\":false},{\"from\":\"585c4d4f-966f-46d7-ad09-64cc26e482bb\",\"to\":\"bbbbbbbb-a001-a008-0026-2\",\"wrap\":false},{\"from\":\"1544dd4b-c076-49a1-be86-fda2514842cf\",\"to\":\"bbbbbbbb-a001-a008-0027-2\",\"wrap\":false},{\"from\":\"6639085c-3900-4fe2-a5dc-e59fb3f581ec\",\"to\":\"bbbbbbbb-a001-a008-0028-2\",\"wrap\":false},{\"from\":\"ac43f920-0afd-423a-b2b2-d960342e88cd\",\"to\":\"bbbbbbbb-a001-a008-0029-2\",\"wrap\":false},{\"from\":\"ee95786e-c8b6-4b72-a0c0-fa55ec9e9f1c\",\"to\":\"bbbbbbbb-a001-a008-0030-2\",\"wrap\":false}],\"id\":\"bbbbbbbb-a001-a008-0000-2\",\"oldId\":\"188f43c5-99c3-483d-8b6a-4d666508c373\",\"subids\":[{\"from\":\"588f3383-089c-4809-91aa-dbe4e883adb6\",\"to\":\"bbbbbbbb-a001-a008-0001-2\"},{\"from\":\"acf68f36-cec0-4970-9b59-8d9c15fe485f\",\"to\":\"bbbbbbbb-a001-a008-0002-2\"},{\"from\":\"0629d9ba-a358-4bf6-a22d-da929013a5d6\"",
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
          "markdown": ",\"to\":\"bbbbbbbb-a001-a008-0003-2\"},{\"from\":\"cd9a89cf-8295-44b3-aead-664cd6290410\",\"to\":\"bbbbbbbb-a001-a008-0004-2\"},{\"from\":\"364e4a53-640d-44b9-acfa-176a4ca6ac7f\",\"to\":\"bbbbbbbb-a001-a008-0005-2\"},{\"from\":\"f4fd653b-31f9-4515-9665-26707a981cb0\",\"to\":\"bbbbbbbb-a001-a008-0006-2\"},{\"from\":\"9a21e213-7481-4fc4-875c-a52ccda08117\",\"to\":\"bbbbbbbb-a001-a008-0007-2\"},{\"from\":\"facd8907-ae07-419a-b58b-d8397cd0d9c9\",\"to\":\"bbbbbbbb-a001-a008-0008-2\"},{\"from\":\"b43b3b8c-7dfe-4cb3-80b1-f83cd7995104\",\"to\":\"bbbbbbbb-a001-a008-0009-2\"},{\"from\":\"d1931b1a-fce8-4366-8c0d-944580ca15eb\",\"to\":\"bbbbbbbb-a001-a008-0010-2\"},{\"from\":\"9d1ba9c8-70e9-412f-8b44-eba24605e1f4\",\"to\":\"bbbbbbbb-a001-a008-0011-2\"},{\"from\":\"aa1cd76d-92ca-4c86-9468-a97b7bd3e9d8\",\"to\":\"bbbbbbbb-a001-a008-0012-2\"},{\"from\":\"26536526-97ac-49e1-95c9-e2e4b2e66c46\",\"to\":\"bbbbbbbb-a001-a008-0013-2\"},{\"from\":\"da9be39f-cea5-4d3a-9f7b-323e56f18eff\",\"to\":\"bbbbbbbb-a001-a008-0014-2\"},{\"from\":\"9058df71-1888-4152-b81d-eae2092407f7\",\"to\":\"bbbbbbbb-a001-a008-0",
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
          "markdown": "015-2\"},{\"from\":\"d536d191-fc72-4708-9010-54fde75dd319\",\"to\":\"bbbbbbbb-a001-a008-0016-2\"},{\"from\":\"b8907259-c1ae-4e87-a423-5a4e88d06197\",\"to\":\"bbbbbbbb-a001-a008-0017-2\"},{\"from\":\"318551b6-d9cd-4464-813e-07f45a10ebad\",\"to\":\"bbbbbbbb-a001-a008-0018-2\"},{\"from\":\"b8a91806-ec11-4441-991e-1327d4f50f88\",\"to\":\"bbbbbbbb-a001-a008-0019-2\"},{\"from\":\"cc8ab771-47a8-4056-ac24-fd93346ccbb1\",\"to\":\"bbbbbbbb-a001-a008-0020-2\"},{\"from\":\"492f6c3c-cdf6-43c7-a6f1-3c65823c658f\",\"to\":\"bbbbbbbb-a001-a008-0021-2\"},{\"from\":\"93f6c4ea-7e35-4e8a-97d6-d7881e0f0368\",\"to\":\"bbbbbbbb-a001-a008-0022-2\"},{\"from\":\"800f0f83-ced6-40f4-831c-4bc41778bf6b\",\"to\":\"bbbbbbbb-a001-a008-0023-2\"},{\"from\":\"afb94afa-69f5-4b74-95a3-153aa7b389c7\",\"to\":\"bbbbbbbb-a001-a008-0024-2\"},{\"from\":\"d77cc9ac-7b98-4b23-89bd-ee775f20fbf2\",\"to\":\"bbbbbbbb-a001-a008-0025-2\"},{\"from\":\"585c4d4f-966f-46d7-ad09-64cc26e482bb\",\"to\":\"bbbbbbbb-a001-a008-0026-2\"},{\"from\":\"1544dd4b-c076-49a1-be86-fda2514842cf\",\"to\":\"bbbbbbbb-a001-a008-0027-2\"},{\"from\":\"6639085c-3",
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
          "markdown": "900-4fe2-a5dc-e59fb3f581ec\",\"to\":\"bbbbbbbb-a001-a008-0028-2\"},{\"from\":\"ac43f920-0afd-423a-b2b2-d960342e88cd\",\"to\":\"bbbbbbbb-a001-a008-0029-2\"},{\"from\":\"ee95786e-c8b6-4b72-a0c0-fa55ec9e9f1c\",\"to\":\"bbbbbbbb-a001-a008-0030-2\"}]},\"persona\":{\"name\":\"Ops\",\"prefix\":\"a001\"},\"usecase\":{\"name\":\"Platform Overview\",\"bizAnalytics\":false,\"prefix\":\"a008\"},\"workflow\":{\"name\":\"SAP RFC.cwf.json\",\"path\":\"SAP RFC.cwf.json\",\"sha\":\"75696cdf56f01767efba6e3dcec70625e8891213\",\"size\":4290,\"url\":\"https://api.github.com/repos/popecruzdt/BizOpsConfiguratorPacks/contents/SAP%20RFC.cwf.json?ref=main\",\"html_url\":\"https://github.com/popecruzdt/BizOpsConfiguratorPacks/blob/main/SAP%20RFC.cwf.json\",\"git_url\":\"https://api.github.com/repos/popecruzdt/BizOpsConfiguratorPacks/git/blobs/75696cdf56f01767efba6e3dcec70625e8891213\",\"download_url\":\"https://raw.githubusercontent.com/popecruzdt/BizOpsConfiguratorPacks/main/SAP%20RFC.cwf.json\",\"type\":\"file\",\"_links\":{\"self\":\"https://api.github.com/repos/popecruzdt/BizOpsConfigurato",
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
          "markdown": "rPacks/contents/SAP%20RFC.cwf.json?ref=main\",\"git\":\"https://api.github.com/repos/popecruzdt/BizOpsConfiguratorPacks/git/blobs/75696cdf56f01767efba6e3dcec70625e8891213\",\"html\":\"https://github.com/popecruzdt/BizOpsConfiguratorPacks/blob/main/SAP%20RFC.cwf.json\"},\"repo\":{\"owner\":\"popecruzdt\",\"repo\":\"BizOpsConfiguratorPacks\",\"path\":\"\",\"success\":true},\"file\":{\"html\":\"\u003cdiv id=\\\"workflow\\\"\u003e\u003cinput type=\\\"hidden\\\" id=\\\"workflowConfigJSON\\\" value=\\\"{\u0026quot;persona\u0026quot;:[\u0026quot;a001\u0026quot;,\u0026quot;a003\u0026quot;],\u0026quot;\u0026quot;:\u0026quot;Done\u0026quot;,\u0026quot;usecase\u0026quot;:\u0026quot;a008\u0026quot;,\u0026quot;workflowName\u0026quot;:\u0026quot;SAP RFC\u0026quot;,\u0026quot;workflowStatus\u0026quot;:\u0026quot;Early Adopter\u0026quot;,\u0026quot;githubUser\u0026quot;:\u0026quot;popecruzdt\u0026quot;,\u0026quot;githubRepo\u0026quot;:\u0026quot;BizOpsConfiguratorPacks\u0026quot;,\u0026quot;githubPath\u0026quot;:\u0026quot;\u0026quot;,\u0026quot;overviewDB\u0026quot;:\u0026quot;SAP RFC - Overview.json\u0026quot;,\u0026quot;readme\u0026quot;:\u0026quot;SAP RFC README.md\u0026quot;,\u0026quot;blogURL\u0026quot;:\u0026quot;\u0026quot;,\u0026quot;addBackButtons\u0026quot;:false,\u0026quot;powerups\u0026quot",
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
          "markdown": ";:false}\\\"\u003e\\n        \u003cdiv class=\\\"workflowPage activePage\\\"\u003e\u003cdiv class=\\\"workflowSections\\\"\u003e\\n        \u003cdiv class=\\\"workflowSection\\\" tabindex=\\\"0\\\"\u003e\\n            \u003cdiv class=\\\"workflowSectionPopup hidden\\\"\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionAddInput\\\"\u003e+\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionDelete\\\"\u003e❌\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionUp\\\"\u003e🔼\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionDown\\\"\u003e🔽\u003c/a\u003e\u003c/div\u003e\\n            \u003c/div\u003e\\n            \u003ch3 contenteditable=\\\"true\\\"\u003eSAP RFC Overview\u003c/h3\u003e\\n            \u003cdiv class=\\\"workflowInput\\\" tabindex=\\\"0\\\"\u003e\\n                \u003cdiv class=\\\"workflowInputPopup hidden\\\"\u003e\\n                    \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputEdit\\\"\u003e✏️\u003c/a\u003e\u003c/div\u003e\\n                    \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDelete\\\"\u003e❌\u003c/a\u003e\u003c/div\u003e\\n                    ",
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
          "markdown": "\u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputUp\\\"\u003e🔼\u003c/a\u003e\u003c/div\u003e\\n                    \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDown\\\"\u003e🔽\u003c/a\u003e\u003c/div\u003e\\n                \u003c/div\u003e\\n                \u003cdiv class=\\\"inputHeader\\\" contenteditable=\\\"true\\\"\u003eOverview Name:\u003c/div\u003e\\n                \u003cdiv class=\\\"userInput\\\"\u003e\u003cinput id=\\\"overviewName\\\" name=\\\"overviewName\\\" placeholder=\\\"Friendly Name\\\" disabled=\\\"\\\" value=\\\"\\\"\u003e\u003c/div\u003e\\n                \u003cdiv class=\\\"transform\\\"\u003e$${\u003cspan contenteditable=\\\"true\\\"\u003eoverviewName\u003c/span\u003e}\u003c/div\u003e\\n            \u003c/div\u003e\\n        \u003c/div\u003e\\n    \\n    \u003cdiv class=\\\"workflowSection\\\" tabindex=\\\"0\\\"\u003e\\n        \u003cdiv class=\\\"workflowSectionPopup hidden\\\"\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionAddInput\\\"\u003e+\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionDelete\\\"\u003e❌\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowSectionUp\\\"\u003e🔼\u003c/a\u003e\u003c/div\u003e\\n                \u003cdiv\u003e\u003ca href=",
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
          "markdown": "\\\"#workflowBuilder\\\" class=\\\"workflowSectionDown\\\"\u003e🔽\u003c/a\u003e\u003c/div\u003e\\n            \u003c/div\u003e\\n        \u003ch3 contenteditable=\\\"true\\\"\u003eSAP RFC Auto-tag\u003c/h3\u003e\\n    \u003cdiv class=\\\"workflowInput\\\" tabindex=\\\"0\\\"\u003e\\n                    \u003cdiv class=\\\"workflowInputPopup hidden\\\"\u003e\\n                    \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputEdit\\\"\u003e✏️\u003c/a\u003e\u003c/div\u003e\\n                    \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDelete\\\"\u003e❌\u003c/a\u003e\u003c/div\u003e\\n                    \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputUp\\\"\u003e🔼\u003c/a\u003e\u003c/div\u003e\\n                    \u003cdiv\u003e\u003ca href=\\\"#workflowBuilder\\\" class=\\\"workflowInputDown\\\"\u003e🔽\u003c/a\u003e\u003c/div\u003e\\n                \u003c/div\u003e\\n                    \u003cdiv class=\\\"inputHeader\\\" contenteditable=\\\"true\\\"\u003eAutotag:\u003c/div\u003e\\n                    \u003cdiv class=\\\"userInput\\\"\u003e\u003cdiv class=\\\"configPusher\\\"\u003e\u003cinput type=\\\"hidden\\\" class=\\\"configPushType\\\" value=\\\"Autotag\\\"\u003e\u003cinput type=\\\"hidden\\\" class=\\\"customServiceTech\\\" value=\\\"\\\"\u003e\u003cinput type=\\\"hidden\\\" class=\\\"customMetricTy",
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
          "markdown": "pe\\\" value=\\\"\\\"\u003e\u003cinput type=\\\"text\\\" disabled=\\\"\\\" class=\\\"configPushFile\\\" value=\\\"SAP RFC - Auto-tag Configuration.json\\\"\u003e\u003c/div\u003e\u003c/div\u003e\\n                    \u003cdiv class=\\\"transform\\\"\u003e$${\u003cspan contenteditable=\\\"true\\\"\u003eautotag\u003c/span\u003e}\u003c/div\u003e\\n                \u003c/div\u003e\u003c/div\u003e\\n    \u003c/div\u003e\u003c/div\u003e\u003c/div\u003e\",\"config\":{\"persona\":[\"a001\",\"a003\"],\"\":\"Done\",\"usecase\":\"a008\",\"workflowName\":\"SAP RFC\",\"workflowStatus\":\"Early Adopter\",\"githubUser\":\"popecruzdt\",\"githubRepo\":\"BizOpsConfiguratorPacks\",\"githubPath\":\"\",\"overviewDB\":\"SAP RFC - Overview.json\",\"readme\":\"SAP RFC README.md\",\"blogURL\":\"\",\"addBackButtons\":false,\"powerups\":false}},\"success\":true,\"tags\":[\"SAP\",\"Overview\",\"RFC\"]},\"owner\":\"christoph.kaltenboeck@voestalpine.com\",\"shared\":\"true\",\"published\":\"true\"}}",
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
          "markdown": "",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.Config_owned_by_Configurator_1.id}"
}


resource "dynatrace_dashboard_sharing" "Config_owned_by_Configurator_1" {
  # enabled    = false
  dashboard_id = "${dynatrace_json_dashboard_base.Config_owned_by_Configurator_1.id}"
  # preset     = false
}


resource "dynatrace_json_dashboard_base" "Config_owned_by_Configurator_1" {
  # contents = ""
}
