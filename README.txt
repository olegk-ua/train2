
The repository is a lab for training.

As the Jenkins server doesn't have its domain name,
the pipeline should be started periodically or manually.

Local installation of Docker is required.

The Jenkins file is downloaded by Jenkins server.

Jenkins pipeline does these steps:

1) downloads, runs docker image with node installation.
2) builds the application.
3) runs it and waits until a user verifies the site http://<The_IP>:5000
4) on click the buttn "Procede", the application is stopped and container removed.
