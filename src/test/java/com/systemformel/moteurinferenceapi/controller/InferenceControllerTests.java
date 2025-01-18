package com.systemformel.moteurinferenceapi.controller;

import java.util.HashMap;
import java.util.Map;

import com.systemformel.moteurinferenceapi.service.InferenceService;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;
import org.springframework.http.MediaType; // Corrigez l'importation ici
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.web.servlet.MockMvc;

@WebMvcTest(InferenceController.class)
public class InferenceControllerTests {

    @Autowired
    private MockMvc mockMvc;

    private InferenceService inferenceService;

    @Test
    public void testDiagnoseEndpoint() throws Exception {
        String[] symptoms = {"fievre", "toux", "maux_de_tete"};
        
        // Créer un mock de réponse de type Map<String, String>
        Map<String, Object> mockResponse = new HashMap<>();
        mockResponse.put("diagnosis", "grippe"); // Indiquez le diagnostic avec un index

        // Simuler le comportement du service
        Mockito.when(inferenceService.getDiagnosis(symptoms)).thenReturn(mockResponse);

        // Effectuer la requête et vérifier la réponse
        mockMvc.perform(post("/api/inference/diagnose")
                .contentType(MediaType.APPLICATION_JSON)
                .content("{\"symptoms\": [\"fievre\", \"toux\", \"maux_de_tete\"]}"))
                .andExpect(status().isOk())
                .andExpect(jsonPath("$.diagnosis").value("grippe")); // Vérifie la valeur du diagnostic
    }
}