# webHTTrack-docker

A docker-ized version of web httrack

## How to use this image

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
```
