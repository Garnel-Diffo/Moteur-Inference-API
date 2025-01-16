package com.systemformel.moteurinferenceapi.service;

import org.springframework.stereotype.Service;
import org.jpl7.Query;
import org.jpl7.Term;

import java.util.HashMap;
import java.util.Map;

@Service
public class InferenceService {

    private static final String PROLOG_FILE = "src/main/resources/rules/prolog.pl";

    public InferenceService() {
        // Charger le fichier Prolog
        String consultQuery = "consult('" + PROLOG_FILE.replace("\\", "/") + "')";
        if (!new Query(consultQuery).hasSolution()) {
            throw new RuntimeException("Erreur lors du chargement du fichier Prolog");
        }
    }

    public Map<String, String> getDiagnosis(String... symptoms) {
        // Vérifier que les symptômes sont fournis
        if (symptoms == null || symptoms.length == 0) {
            throw new IllegalArgumentException("At least one symptom must be provided");
        }

        // Construire la requête Prolog
        StringBuilder prologQuery = new StringBuilder("diagnosis(Disease) :- ");
        for (int i = 0; i < symptoms.length; i++) {
            prologQuery.append("symptom('").append(symptoms[i]).append("')");
            if (i < symptoms.length - 1) {
                prologQuery.append(", ");
            }
        }
        prologQuery.append(".");

        // Initialiser le diagnostic comme inconnu
        Map<String, String> diagnosisMap = new HashMap<>();
        diagnosisMap.put("diagnosis", "unknown");

        try {
            // Exécuter la requête Prolog
            Query query = new Query(prologQuery.toString());

            // Vérifier si une solution existe
            if (query.hasSolution()) {
                Term diagnosisTerm = query.oneSolution().get("Disease");
                diagnosisMap.put("diagnosis", diagnosisTerm.toString());
            }
        } catch (Exception e) {
            // Gérer les erreurs potentielles
            e.printStackTrace();
        }

        // Retourner le résultat
        return diagnosisMap;
    }
}
