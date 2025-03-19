

## På control plane noden

```bash
# På kontrollplanen: Installer MicroK8s
sudo snap install microk8s --classic

# Legg til gjeldende bruker til microk8s-gruppen for å unngå å bruke sudo med microk8s-kommandoer
sudo usermod -aG microk8s $USER

# Opprett .kube-katalogen for kubectl-konfigurasjon
mkdir -p ~/.kube

# Gi riktig tilgang til .kube-katalogen
sudo chown -f -R $USER ~/.kube

# Logg ut og inn igjen for at gruppeendringer skal tre i kraft
su - $USER

# Sjekk status for MicroK8s og vent til det er klart
microk8s status --wait-ready

# Aktiver nødvendige tillegg (addons) som DNS, dashboard og lagring
microk8s enable dns dashboard hostpath-storage

# Generer en kommando for å legge til en node i klyngen
microk8s add-node

# Merk deg kommandoen som vises; den skal kjøres på arbeidernoden for å bli med i klyngen
# Eksempel på utdata:
# Use the following command to join this node to the cluster:
# microk8s join 192.168.1.100:25000/abcdef1234567890 --worker
```


## På arbeidernoden(e):

```bash
# Installer MicroK8s
sudo snap install microk8s --classic

# Legg til gjeldende bruker til microk8s-gruppen
sudo usermod -aG microk8s $USER

# Opprett .kube-katalogen
mkdir -p ~/.kube

# Gi riktig tilgang til .kube-katalogen
sudo chown -f -R $USER ~/.kube

# Logg ut og inn igjen for at gruppeendringer skal tre i kraft
su - $USER

# Bli med i klyngen som arbeidernode ved å bruke kommandoen generert fra kontrollplanen
# Eksempel:
microk8s join 192.168.1.100:25000/abcdef1234567890 --worker

# Sjekk status for MicroK8s og vent til det er klart
microk8s status --wait-ready
```



## Tilbake på kontrollplanen:

```bash
# Bekreft at arbeidernoden(e) har blitt med i klyngen
microk8s kubectl get nodes
```

## For å eksponere Kubernetes Dashboard på LAN eller internett:

```bash
# Installer MicroK8s
sudo snap install microk8s --classic

# Legg til gjeldende bruker til microk8s-gruppen
sudo usermod -aG microk8s $USER

# Opprett .kube-katalogen
mkdir -p ~/.kube

# Gi riktig tilgang til .kube-katalogen
sudo chown -f -R $USER ~/.kube

# Logg ut og inn igjen for at gruppeendringer skal tre i kraft
su - $USER

# Bli med i klyngen som arbeidernode ved å bruke kommandoen generert fra kontrollplanen
# Eksempel:
microk8s join 192.168.1.100:25000/abcdef1234567890 --worker

# Sjekk status for MicroK8s og vent til det er klart
microk8s status --wait-ready
```

## For å installere et DeepSeek chat-grensesnitt: 

## Distribuer DeepSeek-applikasjonen ved å bruke YAML-filen
```bash
microk8s kubectl apply -f deepseek-deployment.yaml
```

## Sjekk hvilken NodePort som er tildelt til DeepSeek-tjenesten
```bash
microk8s kubectl get service deepseek-service
```

## Merk deg NodePort-nummeret (f.eks., 32001)
## Åpne DeepSeek chat-grensesnittet i nettleseren ved å navigere til http://<kontrollplanens_IP>:<NodePort>
## Eksempel: http://192.168.1.100:32001

Husk å erstatte <kontrollplanens_IP> og <NodePort> med de faktiske verdiene.