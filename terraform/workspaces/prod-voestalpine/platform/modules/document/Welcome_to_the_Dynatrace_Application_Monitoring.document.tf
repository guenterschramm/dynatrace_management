resource "dynatrace_document" "Welcome_to_the_Dynatrace_Application_Monitoring" {
  name      = "Welcome to the Dynatrace Application Monitoring"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": [
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.launcher/launchpad/753bbd51-1a2e-467c-8086-91baab6c77da"
                    },
                    "buttonName": "Get started",
                    "description": "What is dynatrace? How do you get started? Where can you learn more about the product?",
                    "id": "49c2d75b-246f-4a6e-afc1-d7522aee8404",
                    "imageDark": "https://dt-cdn.net/images/what-is-dt-cover-1280-e565bbfcba.png",
                    "imageLight": "https://dt-cdn.net/images/what-is-dt-cover-1280-e565bbfcba.png",
                    "title": "Getting started with dynatrace"
                  }
                ],
                "id": "cc77164c-f97d-4686-bcfd-f7f0e6bdff18",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": [
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.launcher/launchpad/4546c1b4-9823-4217-ba98-c3a8dd94def9"
                    },
                    "buttonName": "Explore ",
                    "description": "Monitor and optimize your infrastructure components, including servers, virtual machines, and containers. ",
                    "id": "92058566-145c-49c5-98bb-0c49fe9c6aea",
                    "imageDark": "https://dt-cdn.net/images/infrastructure-observability-launcher-740-09738f75e3.webp",
                    "imageLight": "https://dt-cdn.net/images/infrastructure-observability-launcher-740-09738f75e3.webp",
                    "title": "Infrastructure Observability"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.launcher/launchpad/4ddb7508-7df5-4e82-a5ac-9979840fc98e"
                    },
                    "buttonName": "Explore ",
                    "description": "APM, distributed tracing, and profiling for cloud-native and enterprise stacks.",
                    "id": "6aacf3e9-6d7f-4d13-915e-81b35d0d1f3f",
                    "imageDark": "https://dt-cdn.net/images/application-observability-launcher-370-0c88eb6d36.webp",
                    "imageLight": "https://dt-cdn.net/images/application-observability-launcher-370-0c88eb6d36.webp",
                    "title": "Application Observability"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.launcher/launchpad/61931001-b30f-4fa0-b32a-9ba5c7487d46"
                    },
                    "buttonName": "Explore",
                    "description": "Ingest logs from a myriad of sources, process them effortlessly, and analyze in context with your observability data.",
                    "id": "a658279f-4dfe-42f1-a990-663cff47391d",
                    "imageDark": "https://dt-cdn.net/images/logs-569-26d68f24a8.png",
                    "imageLight": "https://dt-cdn.net/images/logs-569-26d68f24a8.png",
                    "title": "Log Management \u0026 Analytics "
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.launcher/launchpad/8af0cf28-b777-4e7e-9ab4-b3c240b2a86b"
                    },
                    "buttonName": "Explore",
                    "description": "Deliver flawless digital experiences with real-user and synthetic monitoring and session replays.",
                    "id": "7ecc61d5-1de6-4334-9a4d-fcf23d9e8f29",
                    "imageDark": "https://dt-cdn.net/images/digital-experience-launcher-370-08828a9de1.webp",
                    "imageLight": "https://dt-cdn.net/images/digital-experience-launcher-370-08828a9de1.webp",
                    "title": "Digital Experience"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "/ui/apps/dynatrace.launcher/launchpad/3254b797-aa39-48a1-aa3b-b05d416157da"
                    },
                    "buttonName": "Explore",
                    "description": "Make better business decisions in real-time with customizable analytics",
                    "id": "a2cb1de6-9e52-43ad-a803-9d7f7fde59d7",
                    "imageDark": "https://dt-cdn.net/images/business-analytics-launcher-370-d1fdece0e1.webp",
                    "imageLight": "https://dt-cdn.net/images/business-analytics-launcher-370-d1fdece0e1.webp",
                    "title": "Business Observability"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://university.dynatrace.com/ondemand?content=dynatrace\u0026skillLevel=all"
                    },
                    "buttonName": "Start learning",
                    "description": "Just getting started or looking to level up your skills and get Dynatrace Certified? ",
                    "id": "edf7aa4f-902b-4237-ade5-fdcbcf620b19",
                    "imageDark": "https://dt-cdn.net/images/dtu-1807-729d8cfd9b.png",
                    "imageLight": "https://dt-cdn.net/images/dtu-1807-729d8cfd9b.png",
                    "title": "Dynatrace University"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://wkf10640.apps.dynatrace.com/ui/"
                    },
                    "buttonName": "Goto Playground",
                    "description": "Learn and explore dynatrace with pre-built use cases and live demo data.",
                    "id": "96eb4c6a-4359-42cc-a25b-75408d0d4eef",
                    "imageDark": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_Dynatrace.png",
                    "imageLight": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_Dynatrace.png",
                    "title": "Dynatrace Playground"
                  }
                ],
                "id": "89d0cff2-f309-4be4-aae4-69df184d1c85",
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
