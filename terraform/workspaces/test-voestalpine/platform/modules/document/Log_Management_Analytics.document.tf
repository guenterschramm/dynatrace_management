resource "dynatrace_document" "Log_Management_Analytics" {
  name      = "Log Management & Analytics"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "![](https://dt-cdn.net/images/image-9-1200-fad6ca1d9e.png)\n\nIngest logs from a myriad of sources, process them effortlessly, and analyze always in context of your environment and other data with Dynatrace Log Management and Analytics.\n\n* Read more about Log Management \u0026 Analytics in our [Documentation](https://docs.dynatrace.com/docs/observe-and-explore/logs) ",
                "id": "aad228d4-a5c9-4538-9d33-90efc7ea8d6b",
                "properties": {
                  "expanded": true
                },
                "type": "markdown"
              },
              {
                "appearance": "tile",
                "content": [
                  {
                    "action": {
                      "appId": "dynatrace.logs",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.logs?appVersion=1.2.0",
                    "id": "ceba6b01-198c-4033-beac-d3300037e563",
                    "status": "accessible",
                    "title": "Logs",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.notebooks",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.notebooks?appVersion=1.301.6",
                    "id": "07163a77-6f32-4d6d-84e7-0cdaec65bc7a",
                    "status": "accessible",
                    "title": "Notebooks",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.dashboards",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.dashboards?appVersion=1.301.8",
                    "id": "edcc9bbd-ead4-45be-9cef-4ec9e6331ebc",
                    "status": "accessible",
                    "title": "Dashboards",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.security.investigator",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.security.investigator?appVersion=1.298.8",
                    "id": "d8b5c181-563f-4125-b86c-bda70e2c1814",
                    "status": "accessible",
                    "title": "Security Investigator",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.learndql",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.learndql?appVersion=1.11.0",
                    "id": "ceca515e-78c6-4094-bcb8-4a9d6e1699b1",
                    "status": "accessible",
                    "title": "Learn DQL",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "description": "All you need for daily operations",
                "id": "f7561ac6-f1c8-44d5-a3cf-1d0c5df19fd1",
                "properties": {
                  "expanded": true
                },
                "title": "Essential apps",
                "type": "links"
              },
              {
                "appearance": "tile",
                "content": [
                  {
                    "action": {
                      "appId": "dynatrace.davis.problems",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.davis.problems?appVersion=1.6.0",
                    "id": "0c9c94ed-fe3a-4a98-a4d5-be3edf197257",
                    "status": "accessible",
                    "title": "Problems",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.infraops",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.infraops?appVersion=1.6.2",
                    "id": "14feeb5f-0d0d-48fb-b135-e55f1bc347f7",
                    "status": "accessible",
                    "title": "Infrastructure \u0026 Operations",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.clouds",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.clouds?appVersion=1.10.3",
                    "id": "03e5ba29-6505-4923-a0f4-bdad4a79770c",
                    "status": "accessible",
                    "title": "Clouds",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.database.overview",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.database.overview?appVersion=1.43.0",
                    "id": "7865bc2a-a1e8-4499-bdb1-9ea713c2da11",
                    "status": "accessible",
                    "title": "Databases",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.kubernetes",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.kubernetes?appVersion=1.22.1",
                    "id": "58ae32d2-ffb4-4837-95c3-d897f770bbbc",
                    "status": "accessible",
                    "title": "Kubernetes",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "description": "Automatic correlated logs, in context of problem specific scope or service surrounding infrastructure.",
                "id": "cb18f482-071d-4513-9053-14a91b64395e",
                "properties": {
                  "expanded": true
                },
                "title": "Apps with logs in context",
                "type": "links"
              },
              {
                "appearance": "list",
                "content": [
                  {
                    "action": {
                      "documentId": "dynatrace.dashboards.getting-started",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "5aca7823-e4e9-4885-a93f-d9ca7d1c0be6",
                    "title": "Getting started",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dd4ba15d-fb3b-420f-bad3-c4f48e748bc9",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "acc147ac-dce6-4eff-8e16-3e5da422836a",
                    "title": "Log Pattern Dashboard",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "ed0bd696-1caa-40dc-9631-ebf28c315cf0",
                      "type": "openDocument"
                    },
                    "categoryId": "notebooks",
                    "icon": "",
                    "id": "9ec9564f-4060-4002-bb96-a20884042528",
                    "title": "Demo Use cases - Log analysis",
                    "type": "doc"
                  }
                ],
                "contentType": "static",
                "description": "Hit the ground running",
                "id": "6acb850c-9819-43cb-8119-9ba37d2a0394",
                "properties": {
                  "expanded": true
                },
                "title": "Ready-made Dashboards \u0026 Notebooks",
                "type": "links"
              },
              {
                "content": "### Helpful Log Management resources",
                "id": "7ce8821e-7a81-42be-9e3c-e4e246cc1636",
                "properties": {
                  "expanded": true
                },
                "type": "markdown"
              },
              {
                "appearance": "list",
                "content": [
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs"
                    },
                    "description": "Visit the complete Log Analytics documentation.",
                    "id": "638485e7-77b1-44d5-a50b-c0f539e1de77",
                    "title": "Log Analytics documentation",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://wkf10640.apps.dynatrace.com/ui/"
                    },
                    "description": "Learn more about dynatrace in the Demo-Environment",
                    "id": "68635688-7af0-4620-a18b-13567de9c3da",
                    "title": "Dynatrace Playground",
                    "type": "link"
                  }
                ],
                "contentType": "static",
                "id": "a95ad74b-667e-4c88-94c3-988e9729f603",
                "properties": {
                  "expanded": true
                },
                "type": "links"
              }
            ],
            "horizontalLayoutWeight": 1
          }
        ]
      },
      "icon": "data:image/webp;base64,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",
      "schemaVersion": 2
    })
  # private = false
}
