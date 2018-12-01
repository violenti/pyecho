
### This is a app POC for do test connection of type TCP. It's  very simple app development in python 3 and use flask as framework.

## USE:

For example, if you need check a connection of type TCP as of a service and pod of kubernetes, you can edit the service in the yaml and use you service with the pod of pyecho. 

Other case, you need know the  content of type json that send or receive a app.

From the client: 

` curl --header "Content-Type: application/json" \\n  --request POST \\n  --data '{"username":"xyz","password":"xyz"}' \\n  http://localhost:8080/test `


In the logs of the pyecho

```
 * Serving Flask app "main" (lazy loading)
 * Environment: development
 * Debug mode: on
 * Running on http://0.0.0.0:8080/ (Press CTRL+C to quit)
 * Restarting with stat
 * Debugger is active!
 * Debugger PIN: 311-632-786
True
{'password': 'xyz', 'username': 'xyz'}
127.0.0.1 - - [01/Dec/2018 15:48:45] "POST /test HTTP/1.1" 200 -
True
```
Check connection for TCP, is very simple with netcat or telnet (please, not use telnet. Did a kitty each use telnet).

```
nc -v YouIP port

```

## Deploy

If you use kubernetes, 	be able to deploy/Deployment.yaml.

For example : 

`$ kubectrl apply -f Deployment.yaml -n 'younamespace' `

If only use Docker, you can use the container of my repository https://hub.docker.com/r/violenti/pyecho/

`docker run -it -d --name pyecho violenti/pyecho:VERSION `

Also, be able to run virtualenv and install dependences with pip install -f requeriments.txt 
