# webHTTrack-docker

A docker-ized version of web httrack

## How to use this image

WebHTTrack closes after the mirroring is done. You need to set a restart policy of unless-stopped to keep it running.

### Docker Compose

```yaml
version: '3.8'

services:
  web:
    image: eldekyfin/webhttrack
    ports:
      - 8080:8080
    volumes:
      - ./websites:/root/websites
    restart: unless-stopped
```

### Docker Cli

```bash
docker pull \
 -p 8080:8080 \
 -v ./websites:/root/websites
```
