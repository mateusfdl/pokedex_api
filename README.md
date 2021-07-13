# Getting started

1 - Install docker: [Docker Install Docs](https://docs.docker.com/install/)

2 - Clone this project: 

3 - Run the application database and server: `docker-compose up`

# ENDPOINTS

| METHOD | ROUTE |
| ------ | ------ |
| GET | /pokemon/pokemon_name | `ex: ditto`  

### Increase request performance

 To solve the request's performance problem, we could cache the Pokemon skills in some in-memory data storage like Redis for example, so every time a new Pokemon is consumed, the skills will be cached, otherwise, it would only search in Redis, increasing significantly the request performance.
