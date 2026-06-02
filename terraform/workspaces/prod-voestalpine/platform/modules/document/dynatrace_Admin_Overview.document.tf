resource "dynatrace_document" "dynatrace_Admin_Overview" {
  name    = "dynatrace Admin Overview"
  type    = "launchpad"
  content = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "appearance": "tile",
                "content": [
                  {
                    "action": {
                      "documentId": "34d05f6a-cb82-4a1c-89d5-f3756ba7151d",
                      "type": "openDocument"
                    },
                    "categoryId": "launchpads",
                    "description": "",
                    "icon": "",
                    "id": "f9a6bfc0-3ffc-4316-aa2f-fd06fda6dcb1",
                    "title": "Digital Experience Monitoring - New RUM \u0026 Synthetic experience",
                    "type": "doc"
                  }
                ],
                "contentType": "static",
                "id": "4100f19b-cd24-44ab-a2e1-8215b0b7f945",
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
      "icon": "default",
      "schemaVersion": 2
    })
  private = true
}
