# Moteur-Inference-API
Développement d'un moteur d'inférence et API d'intégration au backend

Concevoir et implémenter le moteur d’inférence en Prolog et développer les APIs d’intégration backend pour le connecter avec les autres modules du projet global de "Système d’Aide au Diagnostic Médical". Ce module constitue le cœur du projet, car il sera chargé de fournir les diagnostics médicaux basés sur les symptômes et les données reçues.


## Pour Tester l’API

### Démarrez le serveur Spring Boot :
mvn spring-boot:run

### Utilisez Postman ou cURL ou le swagger pour tester l'API :

**Endpoint :** `http://localhost:8080/api/inference/diagnose`
**Méthode :** POST

**Corps de la requête (JSON) :**
```json
{
  "symptoms": ["fievre", "toux_seche"]
}
```

**Réponse attendue (par exemple) :**
```json
{
  "diagnosis": "grippe"
}
```
