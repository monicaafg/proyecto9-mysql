      #!/bin/bash

      # Actualizamos los paquetes
      sudo apt-get update -y
      sudo apt-get upgrade -y
  
      # Instalamos Docker
      sudo apt-get install -y docker.io
      sudo usermod -aG docker vagrant    

      #Instalar snap
      sudo apt-get update
      sudo apt-get install snapd    

      # Instalamos Helm
      sudo snap install helm --classic

      #Instalar minikube
      sudo apt-get update -y
      sudo apt-get upgrade -y
      sudo apt-get install curl wget apt-transport-https -y
      wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
      sudo cp minikube-linux-amd64 /usr/local/bin/minikube 
      sudo chmod 755 /usr/local/bin/minikube

      #Instalar kubectl
      sudo snap install kubectl --classic

      fuser -k 8081/tcp