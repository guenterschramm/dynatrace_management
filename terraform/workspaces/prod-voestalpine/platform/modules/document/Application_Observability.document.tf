resource "dynatrace_document" "Application_Observability" {
  name      = "Application Observability"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "![solution-launchpads](https://dt-cdn.net/images/application-observability-1200-145f01292f.webp)\n\nOptimize your service performance, innovate faster, and collaborate efficiently with automatic and intelligent observability at scale and end-to-end distributed tracing for cloud-native workloads and enterprise apps. \n* Read more about Application Observability in our [Documentation](https://docs.dynatrace.com/docs/platform-modules/applications-and-microservices)‏‎ ‎",
                "id": "83fec52d-6ab9-44ca-8dfa-3591d94aa0ed",
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
                      "appId": "dynatrace.davis.problems",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.davis.problems?appVersion=1.4.3",
                    "id": "0aa56b5d-259e-471c-816a-eb5ad2976bc2",
                    "status": "accessible",
                    "title": "Problems",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.smartscape",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.smartscape?appVersion=1.322.36%2B20250902-074743",
                    "id": "f0925a9c-3a4a-4682-9064-565639f411d9",
                    "status": "accessible",
                    "title": "Smartscape Topology",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.distributedtracing",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.distributedtracing?appVersion=1.0.0",
                    "id": "184f55ab-1b6d-434e-8c4c-6dc7c1484e02",
                    "status": "accessible",
                    "title": "Distributed Tracing",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.services",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.services?appVersion=1.2.2",
                    "id": "8c905cdd-c4d0-4ee9-b3d0-2a36f68af953",
                    "status": "accessible",
                    "title": "Services",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.kubernetes",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.kubernetes?appVersion=1.19.1",
                    "id": "c8f23b47-6f07-449d-9037-0002f78fb550",
                    "status": "accessible",
                    "title": "Kubernetes",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.queues",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.queues?appVersion=1.302.45%2B20241009-091645",
                    "id": "88d4f299-32ce-4dae-9ea5-148a302ed396",
                    "status": "accessible",
                    "title": "Message Queues",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.mda",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.mda?appVersion=1.302.45%2B20241009-091645",
                    "id": "028d360c-1240-43c5-b099-16a87358073d",
                    "status": "accessible",
                    "title": "Multidimensional Analysis",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "description": "All you need for daily operations",
                "id": "bf15ba5b-4a17-48e8-b074-85e0aff75afb",
                "properties": {
                  "expanded": true
                },
                "title": "Essential apps",
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
                    "id": "41f96f32-3ace-424e-bc5c-3d9a38dbcc4d",
                    "title": "Getting started",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.database.overview.database-overview",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "cf73a08a-0f82-425e-9d19-de1dbf600a47",
                    "title": "Databases Overview",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.infraops.Network-performance",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "1b17c2e3-a481-4779-84a6-b80f75b97c6f",
                    "title": "Network performance",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dashboard--1062962315",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "5f11c09a-c469-43cb-878f-196b32477693",
                    "title": "Citrix DaaS \u0026 Virtual Apps and Desktops Overview",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.notebooks.getting-started",
                      "type": "openDocument"
                    },
                    "categoryId": "notebooks",
                    "icon": "",
                    "id": "1bf0e764-7e70-43db-8975-93d4226f0de6",
                    "title": "Getting started",
                    "type": "doc"
                  }
                ],
                "contentType": "static",
                "description": "No configuration needed, ready to use",
                "id": "a7ebc875-d874-4b38-ace7-afc52f101e47",
                "properties": {
                  "expanded": true
                },
                "title": "Read-Made Dashboards \u0026 Notebooks",
                "type": "links"
              },
              {
                "content": "### Helpful Application Observability resources",
                "id": "5ae57d0b-5c6e-4f24-a664-f52656bf7a6c",
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
                      "url": "https://docs.dynatrace.com/docs/observe/applications-and-microservices"
                    },
                    "description": "Visit the complete Application Observability documentation.",
                    "id": "d08dd69f-756b-430f-8699-ca34f52da047",
                    "title": "Application Observability documentation",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://wkf10640.apps.dynatrace.com/ui/"
                    },
                    "description": "‏‏‎ ‎‏‏‎ Learn more about dynatrace in the Demo-Environment",
                    "id": "cc05dfb8-1cb1-4106-9292-5ce174903515",
                    "title": "Dynatrace Playground",
                    "type": "link"
                  }
                ],
                "contentType": "static",
                "id": "30143fa9-cce9-4ba6-b0d8-77b1c8b64817",
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
