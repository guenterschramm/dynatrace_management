resource "dynatrace_document" "What_is_Dynatrace_and_how_to_get_started" {
  name      = "What is Dynatrace and how to get started?"
  type      = "launchpad"
  content   = jsonencode({
      "background": "default",
      "containerList": {
        "containers": [
          {
            "blocks": [
              {
                "content": "# What is Dynatrace\n\nThe Dynatrace platform delivers analytics and automation for unified observability and security.",
                "id": "56441910-73c1-49e9-b63f-cd40acdbd54c",
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
                      "url": "https://www.youtube.com/watch?v=qo6vjyE-Ak0\u0026t=526s"
                    },
                    "buttonName": "Watch on YouTube",
                    "description": "This Launch Pad provides a quick overview of resources we guide you through in this video. ",
                    "id": "9433a4a8-b231-4555-a1e1-71cec5f682e9",
                    "imageDark": "https://dt-cdn.net/images/what-is-dt-cover-1280-e565bbfcba.png",
                    "imageLight": "https://dt-cdn.net/images/what-is-dt-cover-1280-e565bbfcba.png",
                    "title": "What is Dynatrace in 15 Minutes"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://youtu.be/rw8u3oZ4RdY?si=vHp4zvDqLrXHbBWI"
                    },
                    "buttonName": "Watch on YouTube",
                    "description": "Watch this tutorial to learn everything you need to know about the Dynatrace Platform and follow the hands-on tutorial.",
                    "id": "c39fef5f-9d98-4f22-bf0d-faf7d85f307a",
                    "imageDark": "https://i3.ytimg.com/vi/rw8u3oZ4RdY/maxresdefault.jpg",
                    "imageLight": "https://i3.ytimg.com/vi/rw8u3oZ4RdY/maxresdefault.jpg",
                    "title": "What is Dynatrace [In-Depth Version]"
                  }
                ],
                "id": "1c098f93-9824-4ba3-8d4d-b9d99a6d0007",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "### Unified Operations\n\nApps to help you analyze your infrastructure as a whole to help you identify problems in your infrastructure at a glance and be able focus on alleviating the problems faster.",
                "id": "3641a66c-7203-4769-ae1d-961ec6eb5230",
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
                      "url": "https://www.youtube.com/watch?v=qo6vjyE-Ak0\u0026t=471s"
                    },
                    "buttonName": "Watch on YouTube",
                    "description": "Infrastructure Engineers, DevOps, FinOps, IT Operations",
                    "id": "47c15f03-29ff-4bdc-b6fc-4eb10356f74c",
                    "imageDark": "https://github.com/PennyScully/dynatrace-getting-started/blob/main/images/WhatsNewVideo-DevRel-UnifiedOperations.jpg?raw=true",
                    "imageLight": "https://github.com/PennyScully/dynatrace-getting-started/blob/main/images/WhatsNewVideo-DevRel-UnifiedOperations.jpg?raw=true",
                    "title": "Related professions:"
                  }
                ],
                "id": "cf7dec65-8894-4a32-b80d-4d00d329f77a",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "### Cloud Operations\n\nApps to help visualize all of the cloud infrastructure in one place and ensure releases have the go-ahead before they are pushed to your environments. ",
                "id": "750e889b-a885-4df9-a9db-47b0fe0bc3d6",
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
                      "url": "https://www.youtube.com/watch?v=qo6vjyE-Ak0\u0026t=582s"
                    },
                    "buttonName": "Watch on YouTube",
                    "description": "Cloud native engineers, Site reliability engineers ",
                    "id": "647df2d7-2b3f-44f4-a6d5-66b6fbba54f6",
                    "imageDark": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/WhatsNewVideo-DevRel-CloudOperations.jpg",
                    "imageLight": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/WhatsNewVideo-DevRel-CloudOperations.jpg",
                    "title": "Related professions:"
                  }
                ],
                "id": "7a4539a0-46e3-4cff-8b3e-43e699664072",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "### Application Teams\n\nApps to help to have detailed trail of how your applications are running and ensure you're able to troubleshoot effectively. ",
                "id": "4ae50338-d63e-4d28-952c-169b000c4ee2",
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
                      "url": "https://www.youtube.com/watch?v=qo6vjyE-Ak0\u0026t=684s"
                    },
                    "buttonName": "Watch on YouTube",
                    "description": "Applications owners, Product owners ",
                    "id": "448d1273-9e5b-4296-bbb1-64a928672ca1",
                    "imageDark": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/WhatsNewVideo-DevRel-ApplicationTeams.jpg",
                    "imageLight": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/WhatsNewVideo-DevRel-ApplicationTeams.jpg",
                    "title": "Related professions:"
                  }
                ],
                "id": "20bc5e6b-4dc9-4631-9072-40a073dadb21",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "### Business Stakeholders\n\nApps to help you monitor your observability data in regard to how they impact your broader business goals. Also, we've added some Dashboard examples for inspiration. ",
                "id": "a420968a-3d42-4daa-ae4e-324788705676",
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
                      "url": "https://www.youtube.com/watch?v=qo6vjyE-Ak0\u0026t=765s"
                    },
                    "buttonName": "Watch on YouTube",
                    "description": "C-Level, Business analysts, Product managers, Sales members",
                    "id": "c67b04ad-b78f-429c-ae59-473266fa4ce5",
                    "imageDark": "https://github.com/PennyScully/dynatrace-getting-started/blob/main/images/WhatsNewVideo-DevRel-BusinessStakeholders.jpg?raw=true",
                    "imageLight": "https://github.com/PennyScully/dynatrace-getting-started/blob/main/images/WhatsNewVideo-DevRel-BusinessStakeholders.jpg?raw=true",
                    "title": "Related professions: "
                  }
                ],
                "id": "f7c3acba-f13d-4f26-b458-b6fce6a1f3da",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "## More Learning Resources",
                "id": "91a68413-91d2-48ab-becd-fbbd93550345",
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
                      "url": "https://docs.dynatrace.com/docs"
                    },
                    "buttonName": "Start reading",
                    "description": "Explore the doc, sample configurations, use cases ",
                    "id": "24dfcb3b-48df-40a3-8a08-02578a96ab94",
                    "imageDark": "https://dt-cdn.net/images/customer-apps-517-cb1da73e16.png",
                    "imageLight": "https://dt-cdn.net/images/customer-apps-517-cb1da73e16.png",
                    "title": "Product documentation"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://www.dynatrace.com/dynatrace-university/"
                    },
                    "buttonName": "Open Dynatrace University ",
                    "description": "For on-demand learning, live trainings and certifications. ",
                    "id": "92dae7cf-67f7-4c7c-9509-f7853d788ed1",
                    "imageDark": "https://dt-cdn.net/images/dtu-1807-729d8cfd9b.png",
                    "imageLight": "https://dt-cdn.net/images/dtu-1807-729d8cfd9b.png",
                    "title": "Dynatrace university "
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://www.youtube.com/dynatrace"
                    },
                    "buttonName": "Open YouTube",
                    "description": "Playlists: Observability, App Spotlights, How To's, Community, Learn DQL, Dynatrace Apps and Observe and Resolve",
                    "id": "eda4e95c-7a7f-4e4b-8d6a-5deea9d0ab2d",
                    "imageDark": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_YouTube.png",
                    "imageLight": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_YouTube.png",
                    "title": "Dynatrace YouTube Channel"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://github.com/topics/obslab"
                    },
                    "buttonName": "Open GitHub Tutorials",
                    "description": "Follow one of our 8 GitHub tutorials to learn more about using the Dynatrace Platform. ",
                    "id": "6780de6e-fa09-4b06-9226-82618dd0c95e",
                    "imageDark": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_GitHub.png",
                    "imageLight": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_GitHub.png",
                    "title": "GitHub Tutorials"
                  },
                  {
                    "action": {
                      "type": "openExternalLink",
                      "url": "https://wkf10640.apps.dynatrace.com/ui/"
                    },
                    "buttonName": "Goto Playground",
                    "description": "Learn and explore dynatrace with pre-built use cases and live demo data.",
                    "id": "066ae648-bf0f-4a06-bda5-df2865f9f74e",
                    "imageDark": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_Dynatrace.png",
                    "imageLight": "https://raw.githubusercontent.com/PennyScully/dynatrace-getting-started/refs/heads/main/images/LaunchPad_DevRel_Dynatrace.png",
                    "title": "Dynatrace Playground"
                  }
                ],
                "id": "16792d02-09cd-4db8-96c9-0e585c653786",
                "properties": {
                  "expanded": true
                },
                "type": "cards"
              },
              {
                "content": "",
                "id": "adff35d9-0cb8-448e-9fc6-0a5cee088fd2",
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
      "icon": "data:image/webp;base64,UklGRnQMAABXRUJQVlA4WAoAAAAwAAAAfwAAfwAASUNDUMgBAAAAAAHIAAAAAAQwAABtbnRyUkdCIFhZWiAH4AABAAEAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAACRyWFlaAAABFAAAABRnWFlaAAABKAAAABRiWFlaAAABPAAAABR3dHB0AAABUAAAABRyVFJDAAABZAAAAChnVFJDAAABZAAAAChiVFJDAAABZAAAAChjcHJ0AAABjAAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAAgAAAAcAHMAUgBHAEJYWVogAAAAAAAAb6IAADj1AAADkFhZWiAAAAAAAABimQAAt4UAABjaWFlaIAAAAAAAACSgAAAPhAAAts9YWVogAAAAAAAA9tYAAQAAAADTLXBhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABtbHVjAAAAAAAAAAEAAAAMZW5VUwAAACAAAAAcAEcAbwBvAGcAbABlACAASQBuAGMALgAgADIAMAAxADZBTFBIigQAAAGgRlvb8Ti7k28ytlEMas/Utm3btke1bdu2bTu1zXRWv7rJ/eN5mzzPfb/ztysiJgD+wdYv/tTnbx+fnN+6cFJSu4oFswSYUhdDr6/osPX5qW3zetcpFRf8X2qwBFV+f3hqfXKbSlkNOua6EEn+erB+VKNCwXrkuQZJfzyyuHXZTCY9Ma1Cjk+PTmqdSSeCryLXE2n1IdyMXHd4gS6mu4lcN7iCLqZ/iFynuoIY48os8hZynW8EMf/TSF653iPXaQYQC1swH6tcFuSaCJrlvyK25VTuHXIdDJptvyHiGEbFLci1J2g2TEFEXMKnzh9kahsAmt1tKJ5g08WKTK2tQXMoar/k0h25WkqBZgL+9aeRxxDk+rE8aI5DOwNZJCLXlHwgGsajvTkYGKYh1w+xIBoXoN216RnnI9fHOUE0rUb7u5Jzn4FcH0eC6LcaHUyk5r4Tud6NBtHrCDq6hJj3UeRqTgei/wV0+DitdOeRq9kXxMgH6LiZVPANlGy5eeHYjtULpo8blZyYmJg4bNSEmYvX7T569vrDd1819nqAGG5Gic9NhMKuouw9IN8tOGP+MrU7+YEY9QBlfgmh43YMpS9WYH/kU5QbQ6cbyh9CI+tLlBxHxvBYQRMS5f5H2RXJ5EOFVUicROn1yTRRUYLEAXltyPRUEUtivbx4Mj0U2KJILJI3h0xHBV8CSUyTt4pMGwVvXUmMl7eNTDMFD4DkSHkHyTRQcI1GsrwbZKorOEMjUd5rMuUUHGH2m0wxBTtoJMtDFyoFFKyiMUyBL5VYBfNojFYQSiWbgik0JilITyVGwWgasxVkopJOQRKNpQpyUAlWkEBjo4I4Kt4KhtLYp6AQFZOCITSOKShBBb4xO6+gIpnn8obSuKGgNplL8hJoPFLQiMwBeckk3N4paElms7wxJIK+KuhAZrm8GSRibAq6kJkqbwmJWFTYk0x/eVtJFFfRkEwLeUdJVFKRh0xtaV8KkWio4B6QLSXrZRYgOUBBWzo5JT2JBJrz5G0z0om0SrkfCaJfq2ol8kT6mRTskHbSBej6fZRhDgfRYx8iojXl5Z1LJw5uXj570qikxPj4+ISkEeOmL9yw99SlOxZZJ/2AsPGxhAeRIPqakeu+ECB9zbHzfiCmMyPXba5Ae69Dh71BjL6HXNeYgPgUR1b5gRj5CLmOcgLq/R1YZQIx52PkOtMA5Nvat8AIYtwH5DoeGNa1a5wBxPwpyDUeOOa3ZyxoVviEXPsDS0/b3+JBs5QFuXYGppa/xINmGysytXYErjc0bN1Ac4ANmf6uBWw3CikNQbMncrUUB75TEfFrS9Acglw/VADGfRC/lgPNROT6ORY4l8ZPhUE0TEeuH3ID64xP84FoXIBc70QBb49oEN2mI9dHkaCLbtuR691o0EWvncj1XjrQxbRXkas5HPQxa+f5Z96z2OoJOuoeW6n3xgu/ae33A/11ii7VbfrhtzYau7xAv03pq/eeeuDqe6uSJZAKukcXKd88eeXeSxYJv4c4pQb2uoXlKFq9y/CpS3ZcfPrpa8r54YHwD7ZWUDgg9AUAANAfAJ0BKoAAgAA+MRiKQ6IhoRNJPQQgAwSyBuUMQBIgBbTg4/iPxu2KbuH4u/kl8z9qfnf3w/cj/IdYywDz4OM/9l+mP6q+8n+7+xTzAP0g/2/2q9xbzAfxz+l/6f/Z+8f/Xv6B7APQA/Un/4+tH7GfoAfyD/Jeld/yf8Z8Ef7Pf+n/S/At/Mf6X/1Pz/7gD0AOtN7XP73+J8oaH0e6rUA/Tb/b8BB+gDC1arY7TY3LcM+0NV+UmLmnkE5kFcwpK5Si0B2DB9AGGXDBgaY4wEbUVJ4nNQcIb2i5lwN2yH4nxUwL6Jn1v3lodmL/Y0kJClMi1HgiexSsC5WDW+HK8BsDWnKYcUAAAP72kaAAg/eQP//k+P/+ZJP//kGA71ZYUoTbo+3K6NleVL7awcluxNqjJcns++K2gAkQrlX3VtTSAUMgKEIkTR9Mkfc9+73p32iscmolAMVXGfCY33kTffAekgAQFsFNoEjMoMmyDNA3iurKpC0jxTmzoGhJPCayVD6vS0h83AIh2qVST0sUGPl9iw5tecOcqdW2m6GOStoj3lN+pEXpkt9PIAyttpsR1Am5q/o4xicktR5+GTFtkRRJCxKrq6lGjJ9UTeDsv4koeB5QNXiG/tMY1dfLha+YIeu4DXDySywWf/4vtWf3av9XnVqlVRfHGf/0OcggPIf6/PT8f9BMXB+qyFFXPEgq87fIO7nSz5gp452Ut5OOVSLKpy+529D8XD8WAx6DtDsiq99+BOlez8aPQmpyXgMldSa2Tq0INtDoYYuOXzE/WlrQX0n+tHhS17wg7cfmG5AwgqfpB94SgXyPjo6BOBrmuOjoE4GjmZM1k/+S7eDpdCDoblV1PJW6g842vvPazHkL/wpVzGF9Rdc14cpxzLCCuagAIU/AWw1v9GIjuO0tp+Athrf6MRHcdpY3SLZ2Kaoy/w7UZxkJ68pYBR7tibc5YSdxQQFmOLPij2G61V9PfJu7GWehhN1eFag1PBwoJqlYX4U1ptJ+MR2nl0BB9ggVloZ3c8eqUGI9iMDQjgWNjIPAOwI2VBpH98via/hrBAguXMkF9MiLUfN1+eM7ubhROgMO06YKIdZwEw22wkElYc6NtatMgvMnRSbOs3cbfeijIUI9/qc34A4BuAHqXMT54OXdnv7OcvTzxgmCU/idgRBMj4k1/oCQCzXmh2yArf6EAnu61AH7jx1tdPr8BmUs0LbpSSakUjgdRbdaXXXULL63tRX/99OnQPURCKeHb1K3oa6+sM+KaIK1CFiG8AVc8D+gDeRCTvWzx4D3SXx0zvr3KbeL1lntggbJND1nXT2qWNWSsl1oGETzOAT4fzv8l9y+Ti927zE0LP9cg3jIGr/cgjbBRlkEuB1vRCl91imjtMFa3rCOfEHU32vWK0XzUZWuBEvAEyfgEw+qFuyHan/GY8iN8GE/+rCXMOc8aP5x/FKPuI93CPOP4pR9xHjeJg6rUwsTy8OSsZDLm9yrcfXVrXvkqb/3OxEw8EiApqlQwmwfyldhytwOtwUKi1Y9R+dkNsubwTv5rBsgXbAMvFQVW1q+cfjJD55aswr6EZYEz0r/a/3k+nW5EWCpGg8+yslYdPPr2xzA58v1xNY8xXbxEXaU+FEzX8V4QfjeiKH/+GGRC7Hh8tTrreBcqIRwO1PGqtKxDM0owIAi95gPX7USBTKAPB3NAIkMjKs4suePwXzTfj2azIGAKK8qFTPB6pcLI5xMcieH6wK4fObmzIMRg/AV8/vR00tfrTugKT23VbX/UQfRsDSB1baH9dwS0PDx/S4V0BM3knsANZlI6c90+2ERTzOcS3ldz8UIx6JqXNgcaDrN48pTSsHk2A6flk9nJvoALt7reJhSt+oXpZC1ztehuTF0Si94aSiZMLIcvKr9/tPs1xzzgCVSWv5qornMsBCBlnwO9BXGrbzM/80kneFaNJj//0un/+nFv//RTCnLFD1EzoZ+77hzewzSfCF5bN5vKXR09p9QOHQFUPD2BpkFYKnsc5K+oPF1pAAAAAAAAA==",
      "schemaVersion": 2
    })
  # private = false
}
