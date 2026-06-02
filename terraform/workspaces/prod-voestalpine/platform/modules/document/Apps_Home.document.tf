resource "dynatrace_document" "Apps_Home" {
  name      = "Apps Home"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "##### Explore apps",
                "id": "apps-header",
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
                      "appId": "dynatrace.dashboards",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.dashboards?appVersion=1.322.5",
                    "id": "dynatrace.dashboards",
                    "status": "accessible",
                    "title": "Dashboards",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.davis.problems",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.davis.problems?appVersion=1.12.0",
                    "id": "dynatrace.davis.problems",
                    "status": "accessible",
                    "title": "Problems",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.security.vulnerabilities",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.security.vulnerabilities?appVersion=2.7.0",
                    "id": "dynatrace.security.vulnerabilities",
                    "status": "accessible",
                    "title": "Vulnerabilities",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.experience.vitals",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.experience.vitals?appVersion=1.0.0-preview.2.2",
                    "id": "dynatrace.experience.vitals",
                    "status": "accessible",
                    "title": "Experience Vitals",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.services",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.services?appVersion=1.20.1",
                    "id": "dynatrace.services",
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
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.kubernetes?appVersion=1.31.0",
                    "id": "dynatrace.kubernetes",
                    "status": "accessible",
                    "title": "Kubernetes",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.clouds",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.clouds?appVersion=1.13.3",
                    "id": "dynatrace.clouds",
                    "status": "accessible",
                    "title": "Clouds",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.infraops",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.infraops?appVersion=1.14.2",
                    "id": "dynatrace.infraops",
                    "status": "accessible",
                    "title": "Infrastructure \u0026 Operations",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "id": "unifiedObservabilityAndSecurity",
                "properties": {
                  "expanded": true
                },
                "title": "Unified observability \u0026 security",
                "type": "links"
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
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.logs?appVersion=1.14.1",
                    "id": "dynatrace.logs",
                    "status": "accessible",
                    "title": "Logs",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.distributedtracing",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.distributedtracing?appVersion=1.14.0",
                    "id": "dynatrace.distributedtracing",
                    "status": "accessible",
                    "title": "Distributed Tracing",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.notebooks",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.notebooks?appVersion=1.322.5",
                    "id": "dynatrace.notebooks",
                    "status": "accessible",
                    "title": "Notebooks",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.automations",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.automations?appVersion=1.2075.0",
                    "id": "dynatrace.automations",
                    "status": "accessible",
                    "title": "Workflows",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.site.reliability.guardian",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.site.reliability.guardian?appVersion=1.20.3",
                    "id": "dynatrace.site.reliability.guardian",
                    "status": "accessible",
                    "title": "Site Reliability Guardian",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.security.investigator",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.security.investigator?appVersion=1.320.1",
                    "id": "dynatrace.security.investigator",
                    "status": "accessible",
                    "title": "Security Investigator",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.biz.explore",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.biz.explore?appVersion=1.27.2",
                    "id": "dynatrace.biz.explore",
                    "status": "accessible",
                    "title": "Explore Business Events",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "id": "analyticsAndAutomationsPlatform",
                "properties": {
                  "expanded": true
                },
                "title": "Analytics and automations platform",
                "type": "links"
              },
              {
                "appearance": "tile",
                "content": [
                  {
                    "action": {
                      "appId": "dynatrace.settings",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.settings?appVersion=1.5.0",
                    "id": "dynatrace.settings",
                    "status": "accessible",
                    "title": "Settings",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.discovery.coverage",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.discovery.coverage?appVersion=1.20.1",
                    "id": "dynatrace.discovery.coverage",
                    "status": "accessible",
                    "title": "Discovery \u0026 Coverage",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.synthetic",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.synthetic?appVersion=1.5.3",
                    "id": "dynatrace.synthetic",
                    "status": "accessible",
                    "title": "Synthetic",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.hub",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.hub?appVersion=1.1428.0",
                    "id": "dynatrace.hub",
                    "status": "accessible",
                    "title": "Hub",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "id": "manageDynatrace",
                "properties": {
                  "expanded": true
                },
                "title": "Manage Dynatrace",
                "type": "links"
              },
              {
                "content": [
                  {
                    "action": {
                      "type": "openAllAppsSheet"
                    },
                    "buttonName": "Show all apps",
                    "description": "Explore all your pre-installed apps",
                    "id": "explore-all-apps-card",
                    "imageDark": "./assets/OpenAllAppsSheet.png",
                    "imageLight": "./assets/OpenAllAppsSheet.png",
                    "title": "All apps to build perfect software"
                  }
                ],
                "id": "explore-all-apps",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "##### Learn more",
                "id": "learn-more-header",
                "properties": {
                  "expanded": true
                },
                "type": "markdown"
              },
              {
                "content": [
                  {
                    "action": {
                      "appId": "dynatrace.hub",
                      "type": "openApp"
                    },
                    "buttonName": "Open Dynatrace Hub",
                    "description": "Get more out of Dynatrace with new apps and keep your current ones up to date.",
                    "id": "hub",
                    "imageDark": "/ui/assets/explore-and-learn/ExploreAndLearn.ManageApps.Dark.png",
                    "imageLight": "/ui/assets/explore-and-learn/ExploreAndLearn.ManageApps.Light.png",
                    "title": "Explore new apps and manage your library"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://dt-url.net/developer-launcher-explore?environmentUrl=https%3A%2F%2Fvoestalpine.apps.dynatrace.com"
                    },
                    "buttonName": "Go to Dynatrace Developer",
                    "description": "Supercharge your experience by building any tool you need as a custom app.",
                    "id": "dynatrace-developer",
                    "imageDark": "/ui/assets/explore-and-learn/ExploreAndLearn.BuildYourOwnApps.Dark.png",
                    "imageLight": "/ui/assets/explore-and-learn/ExploreAndLearn.BuildYourOwnApps.Light.png",
                    "title": "Build the apps you need"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://dt-url.net/fz021yd"
                    },
                    "buttonName": "Go to Dynatrace Community",
                    "description": "Ask us questions, give us feedback, and share your ideas with our open and knowledgeable community.",
                    "id": "community",
                    "imageDark": "/ui/assets/explore-and-learn/ExploreAndLearn.GetHelp.Dark.png",
                    "imageLight": "/ui/assets/explore-and-learn/ExploreAndLearn.GetHelp.Light.png",
                    "title": "We’d love to hear from you"
                  }
                ],
                "id": "explore-and-learn",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
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
