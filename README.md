# Work in progress 

A small project to demonstrate that dart source code can be attached to a generic dart image via a 
configmap. You could also attach source through other mechanisms. For example,using an
 init container to clone a git repo.


Any required pub dependencies should be packaged in the docker image as part of the docker build process. In theory
you can do this at runtime - but this may not be reliable. 

Build and tag a docker image:

`docker build -t k8sdart:latest  .`


Create a configmap with our source code:

`kubectl create configmap dartk8s --from-file=lib`


Create a deployment:

`kubectl create -f deployment.yaml`

To show this working, edit a file under lib/, and kill the pod created by the deployment. You should see the change to 
the dart source code picked up by the new pod at runtime.


Future work: integrate Dart with metacontroller:  https://github.com/kstmp/metacontroller

