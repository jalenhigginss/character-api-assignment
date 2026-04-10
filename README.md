# Character CRUD API - Assignment 4

## Video Demonstration
https://teams.microsoft.com/l/meetingrecap?driveId=b%211gGfZbfkZkOud3h4NM2yE4YwWRuKtbRAiPS4lY1XlLRe-Fl8r9CbTK9BArld6Ybf&driveItemId=01N7VJASD5CQQEHFJEIRHZ5JCYJFKVUT3Z&sitePath=https%3A%2F%2Funcg-my.sharepoint.com%2F%3Av%3A%2Fg%2Fpersonal%2Fjrhiggins_uncg_edu%2FIQB9FCBDlSRET56kWElVWk95AZtM0hKPipWjypgXOKLsGKo&fileUrl=https%3A%2F%2Funcg-my.sharepoint.com%2Fpersonal%2Fjrhiggins_uncg_edu%2FDocuments%2FRecordings%2FMeeting+with+Jalen+Higgins-20260409_194314-Meeting+Recording.mp4%3Fweb%3D1&threadId=19%3Ameeting_MTZlNzI0MTgtMzZjNy00NzU1LWExY2MtNDdiYjQ3MTAyYWI3%40thread.v2&organizerId=d24bf7ae-b29f-4bad-beab-1c81f738fa70&tenantId=73e15cf5-5dbb-46af-a862-753916269d73&callId=8eedb463-af13-408b-b1cd-41adcbb5d7c4&threadType=Meeting&meetingType=MeetNow&subType=RecapSharingLink_RecapCore

## Installation
1. Clone the repository.
2. Run the application in VS Code using the main class `CharacterApiApplication.java`.
3. The API will be available at `http://localhost:8080`.

## API Endpoints
| Method | Endpoint | Description |
| :--- | :--- | :--- |
| GET | `/characters` | Returns all characters |
| GET | `/characters/{id}` | Returns a character by ID |
| POST | `/characters` | Creates a new character |
| PUT | `/characters/{id}` | Updates a character |
| DELETE | `/characters/{id}` | Deletes a character |
| GET | `/characters/category/{universe}` | Filter by Universe (e.g., Marvel-616) |
| GET | `/characters/search?name={str}` | Search by name substring |

## Technologies
- Spring Boot, Spring Data JPA, PostgreSQL (Neon)
