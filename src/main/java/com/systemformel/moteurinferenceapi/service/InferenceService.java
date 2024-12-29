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

    // public Map<String, String> getDiagnosis(String... symptoms) {}
}
