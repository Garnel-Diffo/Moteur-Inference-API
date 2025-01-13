package com.systemformel.moteurinferenceapi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import java.util.Map;

@RestController
public class InferenceController {

    @Autowired
    private InferenceService inferenceService;

    @PostMapping("/api/inference/diagnose")
    public Map<String, String> diagnose(@RequestBody Map<String, String[]> symptomsRequest) {
        String[] symptoms = symptomsRequest.get("symptoms");
        return inferenceService.getDiagnosis(symptoms);
    }
}
