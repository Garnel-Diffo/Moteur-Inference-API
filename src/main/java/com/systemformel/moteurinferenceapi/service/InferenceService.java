package com.systemformel.moteurinferenceapi.service;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jpl7.JPLException;
import org.jpl7.Query;
import org.jpl7.Term;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

@Service
public class InferenceService {

    private static final String PROLOG_FILE = "rules/prolog.pl";

    private void validateFileEncoding(String filePath) throws IOException {
        Charset charset = Charset.forName("UTF-8");
        if (!Files.readString(Paths.get(filePath), charset).equals(Files.readString(Paths.get(filePath)))) {
            throw new IOException("Le fichier n'est pas encodé en UTF-8.");
        }
    }

    // Méthode pour charger le fichier Prolog
    private void loadPrologFile() throws IOException {
        try {
            ClassPathResource prologResource = new ClassPathResource(PROLOG_FILE);
            String absolutePath = prologResource.getFile().getAbsolutePath().replace("\\", "/");
    
            // Vérifier si le fichier est en UTF-8
            validateFileEncoding(absolutePath);
    
            // Charger le fichier Prolog
            String consultQuery = String.format("consult('%s')", absolutePath);
            System.out.println(" ConsultQuery : "+ consultQuery);
            Query consult = new Query(consultQuery);
    
            if (!consult.hasSolution()) {
                throw new RuntimeException("Erreur lors du chargement du fichier Prolog : consult échoué.");
            }
        } catch (IOException e) {
            throw new IOException("Impossible de trouver ou charger le fichier Prolog.", e);
        } catch (JPLException e) {
            throw new RuntimeException("Erreur JPL lors du chargement du fichier Prolog : " + e.getMessage());
        }
    }
    

    public Map<String, Object> getDiagnosis(String... symptoms) {
        if (symptoms == null || symptoms.length == 0) {
            throw new IllegalArgumentException("Au moins un symptôme doit être fourni");
        }

        // Charger le fichier Prolog avant d'exécuter la requête
        try {
            loadPrologFile();
        } catch (IOException e) {
            throw new RuntimeException("Erreur lors du chargement du fichier Prolog : " + e.getMessage());
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

        System.out.println("Requête Prolog construite : " + prologQuery);
    
        // Initialiser le diagnostic comme inconnu
        Map<String, Object> diagnosisMap = new HashMap<>();
        diagnosisMap.put("diagnosis", "Aucune maladie trouvée");
        
        try {
            Query query = new Query(prologQuery.toString());
            List<String> liste = new ArrayList<>();
            int count = 0;
    
            while (query.hasMoreSolutions()) {
                Map<String, Term> solution = query.nextSolution();
                Term diagnosisTerm = solution.get("Maladie");
                if (diagnosisTerm != null) {
                    liste.add(diagnosisTerm.toString());
                    count++;
                }
            }

    
            if (count != 0) {
                diagnosisMap.put("diagnosis", liste);
            } 
    
        } catch (Exception e) {
            diagnosisMap.put("error", e.getMessage());
        }
    
        // Retourner le résultat
        return diagnosisMap;
    }


    // Méthode pour obtenir les symptômes
    public Map<String, Object> getSymptoms() {
        // Charger le fichier Prolog avant d'exécuter la requête
        try {
            loadPrologFile();
        } catch (IOException e) {
            throw new RuntimeException("Erreur lors du chargement du fichier Prolog : " + e.getMessage());
        }

        Map<String, Object> symptomsMap = new HashMap<>();
        List<String> symptomsList = new ArrayList<>();

        try {
            Query query = new Query("symptome(Symptomes).");

            while (query.hasMoreSolutions()) {
                Map<String, Term> solution = query.nextSolution();
                Term symptomTerm = solution.get("Symptomes");
                if (symptomTerm != null) {
                    symptomsList.add(symptomTerm.toString());
                }
            }

            symptomsMap.put("symptoms", symptomsList);

        } catch (Exception e) {
            symptomsMap.put("error", e.getMessage());
        }

        // Retourner le résultat
        return symptomsMap;
    }
}
