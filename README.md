# Repo do Desafio1 da Maratona DevFullCycle 2.0

### Executando com Docker Compose

```
$ docker-compose up
```

### Buildando e Executando a imagem customizada
```
$ docker build -t bmnds/desafio1 .
$ docker run -p 3000:3000 bmnds/desafio1
$ docker push bmnds/desafio1
```
