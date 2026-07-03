resource "dynatrace_document" "Digital_Experience" {
  name      = "Digital Experience"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "![solution-launchpads](https://dt-cdn.net/images/digital-experience-1200-3c29f03f59.webp)\n\n\nEnsure that all your applications are available, functional, fast, and efficient across every channel, from mobile and web to IoT and APIs.\n\n* Read more about Digital Experience in our [Documentation](https://docs.dynatrace.com/docs/platform-modules/digital-experience) ‏",
                "id": "3d3575e4-8512-46b2-91ae-8746a5b65552",
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
                      "appId": "dynatrace.classic.web",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.web?appVersion=1.302.53%2B20241017-021333",
                    "id": "b45db815-52e9-4118-a7c5-1e1f9d74e14b",
                    "status": "accessible",
                    "title": "Web",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.frontend",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.frontend?appVersion=1.322.41%2B20250906-053427",
                    "id": "736cb95a-3613-44e9-a495-38f95a6ebf1e",
                    "status": "accessible",
                    "title": "Frontend",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.mobile",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.mobile?appVersion=1.302.45%2B20241009-091645",
                    "id": "5e355760-2965-4ee5-82ae-a1fcfc240999",
                    "status": "accessible",
                    "title": "Mobile",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.synthetic",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.synthetic?appVersion=1.1.0",
                    "id": "b1af1a50-66cf-44f2-898d-681777a5d549",
                    "status": "accessible",
                    "title": "Synthetic",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.session.replay",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.session.replay?appVersion=1.302.45%2B20241009-091645",
                    "id": "4a954cf5-9722-49d4-aea1-f5cb0081d9b2",
                    "status": "accessible",
                    "title": "Session Replay Classic",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.session.segmentation",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.session.segmentation?appVersion=1.302.53%2B20241017-021333",
                    "id": "226f9c77-90b4-42ec-ba79-6f98b7b971f8",
                    "status": "accessible",
                    "title": "Session Segmentation",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.classic.query.user.sessions",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.classic.query.user.sessions?appVersion=1.302.45%2B20241009-091645",
                    "id": "8eb8f7d1-360d-42e2-8ad9-741a1f193219",
                    "status": "accessible",
                    "title": "Query User Sessions",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.davis.problems",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.davis.problems?appVersion=1.4.3",
                    "id": "a557b1f5-d37b-4e26-beef-d45a146cfa98",
                    "status": "accessible",
                    "title": "Problems",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "description": "All you need for daily operations",
                "id": "d629afda-91a2-4178-967b-4a933f8b4165",
                "properties": {
                  "expanded": true
                },
                "title": "Essential apps",
                "type": "links"
              },
              {
                "content": "### Helpful Digital Experience Monitoring resources",
                "id": "1894f503-5e50-452c-a7c4-0ac3b4049f5d",
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
                      "url": "https://docs.dynatrace.com/docs/observe/digital-experience"
                    },
                    "description": "Visit the complete Digital Experience documentation.",
                    "id": "e7d47154-aabe-4936-8e70-32c7ad2d86a6",
                    "title": "Digital Experience Monitoring",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://wkf10640.apps.dynatrace.com/ui/"
                    },
                    "description": "Learn more about dynatrace in the Demo-Environment",
                    "id": "83edad25-1944-4323-b2dd-2ac597412bb6",
                    "title": "Dynatrace Playground",
                    "type": "link"
                  }
                ],
                "contentType": "static",
                "id": "c0868596-dd65-43f6-b7ef-36d59a9553dc",
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
