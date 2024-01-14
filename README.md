# DevOps Coursework 2 

This repository contains files responsible for configuring a Jenkins pipeline, which using several ansible playbooks, automates the steps required to prepare an ubuntu virtual machine to be suitable as a development environment.

Using an app hosted on Dockerhub, the Jenkins pipeline automatically runs the application from a container, and deploys the app using Kubernetes (K8s), updating container and live deployment whenever a change is pushed to the repository.

This project was carried out in an AWS Ubuntu Virtual Machine.
