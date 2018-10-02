# HDP-sandbox
Hortonworks sandbox containers simplified install

## tl;dr:
   ```$ git clone https://github.com/vhbfernandes/hdp-sandbox.git```

   ```$ chmod +x newbiemode.sh```
   
   ```$ ./newbiemode.sh```

## Requirements:
  - Docker
  - docker-compose

## Run
   ```$ docker-compose up -d```

Ambari will be exposed in localhost port 8080

### Log in to sandbox-hdp to reset admin password:

```$ docker exec -it sandbox-hdp bash```

Then:

```$ ambari-admin-password-reset```
