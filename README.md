
### This is a app POC for do test connection of type TCP. It's  very simple app development in python 3 and use flask as framework.


## Deploy

If you use kubernetes, 	be able to deploy/Deployment.yaml.

For example : 

`$ kubectrl apply -f Deployment.yaml -n 'younamespace' `

If only use Docker, you can use the container of my repository https://hub.docker.com/r/violenti/pyecho/

`docker run -it -d --name pyecho violenti/pyecho:VERSION `

Also, be able to run virtualenv and install dependences with pip install -f requeriments.txt 
