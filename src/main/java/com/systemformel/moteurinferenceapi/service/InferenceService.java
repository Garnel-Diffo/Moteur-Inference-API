package com.systemformel.moteurinferenceapi.service;

import java.nio.file.Paths;
import org.springframework.core.io.ClassPathResource;
import java.util.HashMap;
import java.util.Map;
import java.io.IOException;

import org.jpl7.JPLException;
import org.jpl7.Query;
import org.jpl7.Term;
import org.springframework.stereotype.Service;

@Service
public class InferenceService {

    private static final String PROLOG_FILE = "src/main/resources/rules/prolog.pl";

    public InferenceService() throws IOException {
        // Charger le fichier Prolog
        // String consultQuery = "consult('" + PROLOG_FILE.replace("\\", "/") + "')";
        // if (!new Query(consultQuery).hasSolution()) {
        //     throw new RuntimeException("Erreur lors du chargement du fichier Prolog");
        // }

        try {
            ClassPathResource prologResource = new ClassPathResource(PROLOG_FILE);
            String absolutePath = prologResource.getFile().getAbsolutePath();
            String consultQuery = "consult('" + absolutePath.replace("\\", "/") + "')";
            Query consult = new Query(consultQuery);

            if (!consult.hasSolution()) {
            throw new RuntimeException("Erreur lors du chargement du fichier Prolog:  consult failed.");
            }
        System.out.println("Fichier Prolog chargé avec succès.");


        } catch (JPLException e) {
            System.err.println("JPLException: " + e.getMessage()); // Print the JPLException message
            throw new RuntimeException("Erreur lors du chargement du fichier Prolog: " + e.getMessage()); // Re-throw with JPL error
        }
    }

    public Map<String, String> getDiagnosis(String... symptoms) {
        // Vérifier que les symptômes sont fournis
        if (symptoms == null || symptoms.length == 0) {
            throw new IllegalArgumentException("Au moins un symptôme doit être fourni");
        }

        // Construire la requête Prolog
        StringBuilder prologQuery = new StringBuilder("diagnosis(Maladie, [");
        for (int i = 0; i < symptoms.length; i++) {
            prologQuery.append(symptoms[i]);
            if (i < symptoms.length - 1) {
                prologQuery.append(", ");
            }
        }
        prologQuery.append("]).");

        // Initialiser le diagnostic comme inconnu
        Map<String, String> diagnosisMap = new HashMap<>();
        diagnosisMap.put("diagnosis", "Aucune maladie trouvée");

        try {
            // Exécuter la requête Prolog
            Query query = new Query(prologQuery.toString());

            // Vérifier si une solution existe
            if (query.hasSolution()) {
                Term diagnosisTerm = query.oneSolution().get("Maladie");
                diagnosisMap.put("diagnosis", diagnosisTerm.toString());
            }
        } catch (Exception e) {
            // Gérer les erreurs potentielles
            e.printStackTrace();
            diagnosisMap.put("error", e.getMessage());
        }

        // Retourner le résultat
        return diagnosisMap;
    }
}
