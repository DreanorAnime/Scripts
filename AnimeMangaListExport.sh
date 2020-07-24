/*
I personally run this on my server as a daily cronjob for backups

1. Replace YOURNAME with your service account name
2. Set your desired export type 

MAL
- anime
- manga
- animealt (HTML scrape, classic lists only)
- mangaalt (HTML scrape, classic lists only)

Kitsu
- kitsuanime
- kitsumanga

Anilist
- anilistanime
- anilistmanga
- anilistanimealt (rounded scores)
- anilistmangaalt (rounded scores)

AnimePlanet (experimental!)
- animeplanetanime
*/
curl -X POST 'https://malscraper.azurewebsites.net/scrape' -d 'username=YOURNAME&listtype=anime' -o myanimelist.xml
