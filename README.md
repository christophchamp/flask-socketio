# flask-socketio
A simple demo of using WebSockets in Kubernetes with an Nginx Ingress Controller

by [Christoph Champ](http://www.christophchamp.com)

## Usage

* Build the Docker image:
```
$ docker build -t flask-socketio:0.1 .
```

* Start a Docker container from the above built image:
```
$ docker run -d -p 5000:5000 --name socketio flask-socketio:0.1
```

Now, visit `http://localhost:5000` in your web browser.
