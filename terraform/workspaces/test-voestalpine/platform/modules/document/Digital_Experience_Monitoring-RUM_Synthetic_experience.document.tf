resource "dynatrace_document" "Digital_Experience_Monitoring-RUM_Synthetic_experience" {
  name      = "Digital Experience Monitoring - RUM & Synthetic experience"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "![solution-launchpads](https://dt-cdn.net/images/digital-experience-1200-3c29f03f59.webp)\n\n\nDigital Experience Monitoring helps you understand how users interact with your web and mobile applications by capturing performance, behavior, and experience data in real time. It provides end-to-end visibility so teams can quickly identify issues, optimize journeys, and deliver better digital experiences.\n\n* Read more about Digital Experience in our [Documentation](https://docs.dynatrace.com/docs/platform-modules/digital-experience) \n* Looking for something else? visit [Playground home](/ui/apps/dynatrace.launcher/launchpad/99583c94-6c7c-4a5d-9c23-1432e4e1746c) for a complete overview of Dynatrace capabilities.",
                "id": "3d3575e4-8512-46b2-91ae-8746a5b65552",
                "properties": {
                  "expanded": true
                },
                "type": "markdown"
              },
              {
                "content": "## Explore what you can do with Digital Experience Monitoring",
                "id": "6b36c653-b76a-42cb-a1de-2aa769f8010b",
                "properties": {
                  "expanded": true
                },
                "type": "markdown"
              },
              {
                "content": [
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.experience.vitals"
                    },
                    "buttonName": "Explore Experience Vitals",
                    "description": "Quickly identify what slows users down by monitoring core web and mobile vitals.",
                    "id": "9082c5d9-a49c-432a-9a7a-f6057f37aac2",
                    "imageDark": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadExperienceVitals.png",
                    "imageLight": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadExperienceVitals.png",
                    "title": "Experience Vitals"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.error.inspector"
                    },
                    "buttonName": "Explore Error Inspector",
                    "description": "Resolve issues faster by surfacing high-impact errors with full contextual detail.",
                    "id": "48df65c1-8f17-4d2c-99a5-1c5d1b665ef2",
                    "imageDark": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadErrorInspector.png",
                    "imageLight": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadErrorInspector.png",
                    "title": "Error Inspector"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.users.sessions/"
                    },
                    "buttonName": "Explore Users and Sessions",
                    "description": "Understand real user behavior by exploring journeys, interactions, and friction points.",
                    "id": "dda5a1c5-04e9-4193-8db9-735e4563ef89",
                    "imageDark": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadUsersandSessions.jpg",
                    "imageLight": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadUsersandSessions.jpg",
                    "title": "Users and Sessions"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.synthetic"
                    },
                    "buttonName": "Explore Synthetic",
                    "description": "Ensure flawless experiences by simulating critical interactions to prevent downtime and protect user experiences.",
                    "id": "b4c6ee84-91a7-450e-be91-c1d7f2c49b78",
                    "imageDark": "",
                    "imageLight": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadSynthetic.png",
                    "title": "Synthetic"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.opportunity.insights"
                    },
                    "buttonName": "Opportunity Insights",
                    "description": "Identify, prioritize, and act on high-impact business opportunities.",
                    "id": "2b27a0cc-c9e2-4ae4-a266-d2b516d20707",
                    "imageDark": "",
                    "imageLight": "https://cdn.dm.dynatrace.com/assets/Marketing/screenshots/DEMLaunchpadOpportunityInsights.png",
                    "title": "Opportunity Insights"
                  }
                ],
                "id": "3e12ca55-1e10-4a96-b0b9-2c02ef5505b9",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "## Helpful DEM resources",
                "id": "d9801ccf-debe-40ab-816c-d2f02bbfe276",
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
                      "documentId": "dynatrace.experience.vitals.core-web-vitals",
                      "type": "openDocument"
                    },
                    "categoryId": "notebooks",
                    "icon": "",
                    "id": "6615a0a3-d156-4224-9000-803c8380ac45",
                    "title": "Google Core Web Vitals analysis",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.experience.vitals.xhr-performance",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "d5c3395f-c94a-4346-ac74-78932f051594",
                    "title": "XHR performance",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.experience.vitals.page-performance-and-errors",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "63ff5f88-b12a-4799-9b71-d51196bf20ff",
                    "title": "Page performance \u0026 errors",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.experience.vitals.mobile-app-start-health",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "5fbefc4a-081b-43ac-90e7-b247c2558bf9",
                    "title": "Mobile app start health",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.experience.vitals.mobile-troubleshooting",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "74220cf2-f97b-49fe-becc-cb0ef202660b",
                    "title": "Mobile troubleshooting",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.experience.vitals.frontend-resource-analysis",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "ed13dae0-15b6-4f8d-a361-31187d978e61",
                    "title": "Frontend resource analysis",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.experience.vitals.digital-experience-retain-and-query-usage",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "abdf87e8-bdaa-4d27-9193-54d74c7597ba",
                    "title": "Digital Experience retain and query usage",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.synthetic.synthetic-web-availability-and-performance",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "9d4f69dd-fbaa-4507-8fb4-97a01e6487f4",
                    "title": "Synthetic web availability and performance",
                    "type": "doc"
                  },
                  {
                    "action": {
                      "documentId": "dynatrace.synthetic.synthetic-nam-monitoring",
                      "type": "openDocument"
                    },
                    "categoryId": "dashboards",
                    "icon": "",
                    "id": "f3e41b4a-422f-4108-aaec-efae241b171f",
                    "title": "Synthetic network availability monitoring",
                    "type": "doc"
                  }
                ],
                "contentType": "static",
                "description": "Turn data into meaningful insights with dynamic notebooks \u0026 dashboards",
                "id": "18430b9e-ba66-4a1f-b43a-e13757bf4ba4",
                "properties": {
                  "expanded": true
                },
                "title": "Explore ready-made Notebooks \u0026 Dashboards",
                "type": "links"
              },
              {
                "appearance": "list",
                "content": [
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.hub/browse/digital-experience"
                    },
                    "description": "Find all DEM apps, extensions and technologies.",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.hub",
                    "id": "a8cb33d4-1ed4-4aab-aed9-0602cbfcabd0",
                    "title": "Hub",
                    "type": "link"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.session.replay",
                      "type": "openApp"
                    },
                    "categoryId": "classic-apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.session.replay",
                    "id": "062c1399-c95f-45c2-9d92-0338427eb7ad",
                    "status": "accessible",
                    "title": "Session Replay Classic",
                    "type": "app"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.hub/browse/digital-experience?details=dynatrace.synthetic.workflow.action"
                    },
                    "description": "",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.hub?appVersion=1.1531.0",
                    "id": "759d49e0-66ae-4992-9975-bd7a0ec8478e",
                    "title": "Synthetic for workflows",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://university.dynatrace.com/learn/courses/372/foundations-of-real-user-monitoring"
                    },
                    "description": "Dynatrace University Course",
                    "id": "cdd41d47-73a3-45c6-8967-0841378736ea",
                    "title": "Foundations of RUM",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://university.dynatrace.com/learn/courses/400/getting-started-with-real-user-monitoring-rum"
                    },
                    "description": "Dynatrace University Course",
                    "id": "1522c605-f79d-4a31-8a7d-bcd84177718e",
                    "title": "Getting Started with RUM",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://docs.dynatrace.com/docs/observe/digital-experience"
                    },
                    "description": "DEM setup and reference docs",
                    "id": "a6d0f6f9-825e-449e-bea2-3d4ceabfd5d1",
                    "title": "DEM Documenation",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://docs.dynatrace.com/docs/observe/digital-experience/new-rum-experience/mobile-frontends"
                    },
                    "description": "Mobile documentation ",
                    "id": "c73d4a07-8b91-4da2-808e-d1d5efd1c513",
                    "title": "Mobile Frontends",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://docs.dynatrace.com/docs/shortlink/concept-user-sessions"
                    },
                    "description": "User Sessions documentation",
                    "id": "00d8cd91-f4c8-480e-85b3-f9ed94b7120d",
                    "title": "User Sessions",
                    "type": "link"
                  }
                ],
                "contentType": "static",
                "description": "Find links to apps, technologies, documentation, and courses.",
                "id": "88dbfd9b-1894-4327-80da-4d98db385154",
                "properties": {
                  "expanded": true
                },
                "title": "Explore all Digital Experience ",
                "type": "links"
              },
              {
                "content": "Share this experience with a colleague! \n```sh \nhttps://dt-url.net/visit-the-dynatrace-playground\n```",
                "id": "6bb37ccd-9f6c-4570-a120-e0a6b40d9ab1",
                "properties": {
                  "expanded": true
                },
                "type": "markdown"
              }
            ],
            "horizontalLayoutWeight": 1
          }
        ]
      },
      "icon": "default",
      "schemaVersion": 2
    })
  custom_id = "dynatrace.experience.vitals.digital-experience-launch"
  # private = false
}
