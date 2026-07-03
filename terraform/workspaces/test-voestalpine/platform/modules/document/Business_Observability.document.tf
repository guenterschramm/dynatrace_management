resource "dynatrace_document" "Business_Observability" {
  name      = "Business Observability"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "![solution-launchpads](https://dt-cdn.net/images/business-observability-4406-7f2732ce31.webp)\n\nDynatrace Business Observability enables you to simplify critical, real-time business decisions with precision, speed, and context. Business Observability is powered by business events, a unique data type in Dynatrace that captures real-time, precise business data from anywhere, enriches it with topology metadata, and stores it in Grail for AI-driven analytics.\n\n‏Looking for something else? visit [Playground home](/ui/apps/dynatrace.launcher/launchpad/99583c94-6c7c-4a5d-9c23-1432e4e1746c) for an overview of Dynatrace capabilities.\n\n‏‏‏‏‎ ‎‎\n‏‏",
                "id": "81855278-3cdb-47c0-8503-e0c699700e82",
                "properties": {
                  "expanded": true
                },
                "type": "markdown"
              },
              {
                "content": "# Explore what you can do with Business Observability",
                "id": "623ffa8a-f3f0-46db-a0f1-9b9ce968393f",
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
                      "appId": "dynatrace.biz.explore",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.biz.explore?appVersion=1.27.2",
                    "id": "cb336c9c-3478-4488-847e-733b6a4cd5e9",
                    "status": "accessible",
                    "title": "Explore Business Events",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.biz.flow",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.biz.flow?appVersion=1.34.0",
                    "id": "e25e5f19-19f8-4d5c-8892-92d463ca24c1",
                    "status": "accessible",
                    "title": "Business Flow",
                    "type": "app"
                  },
                  {
                    "action": {
                      "appId": "dynatrace.biz.carbon",
                      "type": "openApp"
                    },
                    "categoryId": "apps",
                    "icon": "/platform/app-engine/registry/v1/app-icons/dynatrace.biz.carbon?appVersion=1.14.0",
                    "id": "c7a144ad-a7f2-4156-acd8-2e2f50c9418b",
                    "status": "accessible",
                    "title": "Cost \u0026 Carbon Optimization ",
                    "type": "app"
                  }
                ],
                "contentType": "static",
                "id": "f343bd5c-5625-440f-91bf-72835d56f1f7",
                "properties": {
                  "expanded": true
                },
                "title": "Essential Apps",
                "type": "links"
              },
              {
                "content": [
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://docs.dynatrace.com/docs/observe/business-observability"
                    },
                    "buttonName": "Learn about Business Observability",
                    "description": "Connects application performance and user experience to business metrics. Enable your business and IT teams to collaborate on shared data.",
                    "id": "f51a6b72-52c3-4fc9-948c-4a021a0b399c",
                    "imageDark": "https://dt-cdn.net/images/dashboard-890-ef261bb729.webp",
                    "imageLight": "https://dt-cdn.net/images/dashboard-890-ef261bb729.webp",
                    "title": "Business reporting, analytics, and automation"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/document/v0/#share=de502019-bbc7-4878-80e5-57ac4a8ccaf0"
                    },
                    "buttonName": "Explore business process observability",
                    "description": "Track, analyze, and optimize your critical business processes. ",
                    "id": "a7f70ede-e01a-4590-9aed-97c3c7e1d2e5",
                    "imageDark": "https://marvel-b1-cdn.bc0a.com/f00000000236551/dt-cdn.net/wp-content/uploads/2024/03/Blog_-OTP-0086_-high-res-version-1200x675.png",
                    "imageLight": "https://marvel-b1-cdn.bc0a.com/f00000000236551/dt-cdn.net/wp-content/uploads/2024/03/Blog_-OTP-0086_-high-res-version-1200x675.png",
                    "title": "Business process observability"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/document/v0/#share=25275a91-6320-4785-8155-c298d3a0209b"
                    },
                    "buttonName": "Explore cost and carbon optimization",
                    "description": "Track, analyze, and optimize your IT carbon footprint and cloud costs",
                    "id": "2962a547-c1dc-4f82-9bb1-ae3ae42c6bf7",
                    "imageDark": "https://marvel-b1-cdn.bc0a.com/f00000000236551/dt-cdn.net/wp-content/uploads/2024/09/Blog_-OTP-0204_-high-res-version-1200x675.png",
                    "imageLight": "https://marvel-b1-cdn.bc0a.com/f00000000236551/dt-cdn.net/wp-content/uploads/2024/09/Blog_-OTP-0204_-high-res-version-1200x675.png",
                    "title": "Cost and carbon optimization"
                  }
                ],
                "id": "dbdfdf23-cf8c-44a4-9ee2-af2b5866efdd",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "### Helpful Business Observability resources",
                "id": "9acaf857-803f-4725-869d-1289d08bdf12",
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
                      "url": "https://docs.dynatrace.com/docs/platform-modules/business-analytics"
                    },
                    "description": "Visit the complete Business Observability documentation.",
                    "id": "01b79ce1-bb25-437f-b227-a9dc5312a095",
                    "title": "Business Observability documentation",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://wkf10640.apps.dynatrace.com/ui/"
                    },
                    "description": "Learn more about dynatrace in the Demo-Environment",
                    "id": "753e84e9-e76e-4ab3-bac7-97f47ca4432a",
                    "title": "Dynatrace Playground",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://assets.dynatrace.com/en/docs/ebook/bae13222-ebk-business-analytics-use-cases.pdf"
                    },
                    "description": "Catalog of Business Observability use cases",
                    "id": "b1303edd-56d5-4573-b96a-676bb1b03bdc",
                    "title": "Business Observability in Action",
                    "type": "link"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://www.dynatrace.com/news/tag/business-analytics/"
                    },
                    "description": "Learn about product enhancements, use cases, and customer stories.",
                    "id": "98b154d0-659f-4a46-a20f-24166e70167c",
                    "title": "Business Observability blog posts",
                    "type": "link"
                  }
                ],
                "contentType": "static",
                "id": "4284576b-f43a-46c4-82d6-f6133bdca722",
                "properties": {
                  "expanded": true
                },
                "type": "links"
              },
              {
                "content": "",
                "id": "66b3e013-fd59-4dbe-bb10-476e62920402",
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
      "icon": "data:image/webp;base64,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",
      "schemaVersion": 2
    })
  # private = false
}
