# SIMPLE CRUD API WITH DJANGO REST FRAMEWORK
# Django REST framework is a powerful and flexible toolkit for building Web APIs.

Requirements
Python 3.6
Django 3.2
Django REST Framework
Installation
# After you cloned the repository, you want to create a virtual environment, so you have a clean python installation. You can do this by running the command

python -m venv env
# After this, it is necessary to activate the virtual environment, you can get more information about here https://docs.python.org/3/tutorial/venv.html

# You can install all the required dependencies by running

pip install -r requirements/dev.txt

Structure

In a RESTful API, endpoints (URLs) define the structure of the API and how end users access data from our application using the HTTP methods - GET, POST, PUT, DELETE. Endpoints should be logically organized around collections and elements, both of which are resources.

In our case, we have one single resource, drinks, so we will use the following URLS - /drinks/ and /drinks/<id> for collections and elements, respectively:

Endpoint	HTTP Method	CRUD Method	Result
drinks	GET	READ	Get all drink
drinks/:id	GET	READ	Get a single drink
drinks POST	CREATE	Create a new drink
drinks/:id	PUT	UPDATE	Update a drink
drinks/:id	DELETE	DELETE	Delete a drink
Use
We can test the API using Postman

Postman is available on the web at go.postman.co/home

# prometheus
# Python prometheus library for django and django rest framework. This helps in monitoring the application on a granular level.
# You can customize which part of the application you want to monitor. Through this you can monitor a REST API


 ## Installation

# Install with:

#### pip3 install prometheus-python


# Used docker-compose to build the images, must be built in advance, or docker-compose will build them.

# cd ~/dockerfiles/
# docker build -t apps:latest .
or use

#####docker-compose build
# Then Run it.

# docker-compose up

# docker-compose up will run and start the Django Rest Api app and  prometheus on local host
# http://localhost:8000/drinks #This will get all the drinks
# http://localhost:9090/metrics  # This will start prometheus on port 9090


# Helm is a tool for managing Charts. Charts are packages of pre-configured Kubernetes resources.

Use Helm to:
Share your own applications as Helm Charts
Create reproducible builds of your Kubernetes applications
Intelligently manage your Kubernetes manifest files
Manage releases of Helm packages

Install
Binary downloads of the Helm client can be found on the Releases page.

Unpack the helm binary and add it to your PATH and you are good to go!

If you want to use a package manager:

Homebrew users can use brew install helm.
Chocolatey users can use choco install kubernetes-helm.
Scoop users can use scoop install helm.
GoFish users can use gofish install helm.
Snapcraft users can use snap install helm 












