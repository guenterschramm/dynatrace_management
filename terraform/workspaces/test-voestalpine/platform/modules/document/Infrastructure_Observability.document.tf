resource "dynatrace_document" "Infrastructure_Observability" {
  name      = "Infrastructure Observability"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "![solution-launchpads](https://dt-cdn.net/images/infrastructureobservability-1200-1d2c8ca92d.webp)\n\nGet automatic and intelligent observability across cloud and hybrid environments with continuous auto-discovery of any type of infrastructure—all in context and with precise, AI-powered answers. \n\n* Read more about Infrastructure solutions in our [Documentation](https://docs.dynatrace.com/docs/platform-modules/infrastructure-monitoring) ‏‏‎ ‎",
                "id": "21f22ddf-16e2-4e16-9631-59a6dde695b4",
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
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.davis.problems?appVersion=1.15.1",
                    "id": "19e75399-3d5a-4fe9-82da-751a426d2f09",
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
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.infraops?appVersion=1.18.0",
                    "id": "3ad03fd6-4277-46ac-a319-96aa06a310f2",
                    "status": "accessible",
                    "title": "Infrastructure \u0026 Operations",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.database.overview",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.database.overview?appVersion=1.52.1",
                    "id": "c66b3753-ff3a-4225-837f-36a04173fecf",
                    "status": "accessible",
                    "title": "Databases",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.logs",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.logs?appVersion=1.19.1",
                    "id": "4998164a-7f8a-434b-be79-9f0f6c9c5db9",
                    "status": "accessible",
                    "title": "Logs",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.clouds",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.clouds?appVersion=1.13.5",
                    "id": "6c901549-c5a8-4b8d-9141-bf4b52d45267",
                    "status": "accessible",
                    "title": "Clouds",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.vmware",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.vmware?appVersion=1.330.47%2B20260116-044407",
                    "id": "0ed01bb9-30de-40a3-b282-392079879932",
                    "status": "accessible",
                    "title": "VMware Classic",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.kubernetes",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.kubernetes?appVersion=1.37.1",
                    "id": "1ffb9b98-b304-43ec-afe1-ec7efdf529c3",
                    "status": "accessible",
                    "title": "Kubernetes",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "description": "All you need for daily operations ",
                "id": "02bdf98f-3361-4a42-84a3-a074918d103c",
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
                    "id": "bbc91e07-2978-4d76-84b4-25dbdcb7dea4",
                    "title": "Getting started",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.infraops.Infrastructure-Observability",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "b55104d7-8f21-495e-b266-5748caf2fe9d",
                    "title": "Infrastructure Observability Dashboard",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dashboard-1547936244",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "6345e9f6-8a3a-4f06-9c71-1b3ac484d81c",
                    "title": "SQL Server Overview",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dashboard--1277538034",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "153c2e6c-ee2e-45ec-9514-850edab4f181",
                    "title": "SQL Server (Local) Overview",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.clouds.Azure-overview",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "996f06a6-1726-4f9b-90cb-c78a4ca77e34",
                    "title": "Azure overview",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.clouds.AWS-overview",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "b67d3bed-e9c4-4319-8227-e3317c077c4f",
                    "title": "AWS overview",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.kubernetes.kubernetes-cluster",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "description": "",
                    "icon": "",
                    "id": "9ca1bbc3-d4f8-40ce-81e7-d030adc2e4a4",
                    "title": "Kubernetes cluster",
                    "type": "doc"
                  }
                ],
                "contentType": "static",
                "description": "No configuration needed, ready to use",
                "id": "6520ddc1-3bd4-4c59-a4db-4a6b11c553e1",
                "properties": {
                  "expanded": true
                },
                "title": "Ready-Made Dashboards",
                "type": "links"
              },
              {
                "appearance": "list",
                "content": [
                  {
                    "action": {
                      "documentId": "dynatrace.notebooks.getting-started",
                      "type": "openDocument"
                    },
                    "categoryId": "notebooks",
                    "icon": "",
                    "id": "78489551-21ac-45b2-88a0-0b2a9df3ef59",
                    "title": "Getting started",
                    "type": "doc"
                  }
                ],
                "contentType": "static",
                "id": "9d08715f-d34b-49eb-a8f0-1223aff4e5d0",
                "properties": {
                  "expanded": true
                },
                "title": "Ready-Made Notebooks",
                "type": "links"
              },
              {
                "content": "### Helpful Infrastructure Observability resources",
                "id": "aead9442-6f44-433b-b256-35991f31c964",
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
                      "url": "https://docs.dynatrace.com/docs/observe/infrastructure-monitoring"
                    },
                    "description": "Visit the complete Infrastructure Observability documentation.",
                    "id": "e0db6401-cbbe-4af7-b9fd-de8cc9efb874",
                    "title": "Infrastructure Observability Documentation",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://wkf10640.apps.dynatrace.com/ui/"
                    },
                    "description": "Learn more about dynatrace in the Demo-Environment",
                    "id": "d524e66e-8074-4035-a1ed-ba6e4cf3d64e",
                    "title": "Dynatrace Playground",
                    "type": "link"
                  }
                ],
                "contentType": "static",
                "id": "06125001-f7cf-49a4-8b59-cd3b6e710c3e",
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
