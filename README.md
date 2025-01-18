# Moteur-Inference-API
Développement d'un moteur d'inférence et API d'intégration au backend

Concevoir et implémenter le moteur d’inférence en Prolog et développer les APIs d’intégration backend pour le connecter avec les autres modules du projet global de "Système d’Aide au Diagnostic Médical". Ce module constitue le cœur du projet, car il sera chargé de fournir les diagnostics médicaux basés sur les symptômes et les données reçues.


## Pour Tester l’API

### Après avoir cloner le projet avec la commande:
```bash
git clone https://github.com/Garnel-Diffo/Moteur-Inference-API.git
```

### Il faut installer SWI-Prolog qui est à la racine du projet le nom est `swipl-9.0.4-1.x64` 

### Definir la variable d'environnement `jpl`. 
taper la commande suivate dans le CMD:
```bash
set JAVA_LIBRARY_PATH=C:\Program Files\swipl\bin
```

### Installer les dependances 
Placez-vous à la racine du projet puis tapez:
```bash
mvn clean install
```

### Démarrez le serveur Spring Boot 
### Placez-vous à la racine du projet puis tapez:
```bash
mvn spring-boot:run
```

### Utilisez le swagger configuré dans le projet ou Postman pour tester l'API :
Pour utiliser le **`swagger`** pour tester, lancer tout simplement l'URL suivant dans votre navigateur

```http://localhost:8080/swagger-ui/index.html#/```

**Endpoint :** **`POST`** /api/inference/diagnose

**Corps de la requête (JSON) :**
```json
{
  "symptoms": ["fievre", "toux", "maux_de_tete"]
}
```

**Réponse attendue (par exemple) :**
```json
{
  "diagnosis": "grippe"
}
```

### Pour utiliser `Postman` voici les différentes informations

**Endpoint :** `http://localhost:8080/api/inference/diagnose`
**Méthode :** POST

**Corps de la requête (JSON) :**
```json
{
  "symptoms": ["fievre", "toux", "maux_de_tete"]
}
```

**Réponse attendue (par exemple) :**
```json
{
  "diagnosis": "grippe"
}
```