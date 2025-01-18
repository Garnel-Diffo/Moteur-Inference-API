package com.systemformel.moteurinferenceapi.controller;

import com.systemformel.moteurinferenceapi.service.InferenceService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/inference")
public class InferenceController {

    private final InferenceService inferenceService;

    public InferenceController(InferenceService inferenceService) {
        this.inferenceService = inferenceService;
    }

    @PostMapping("/diagnose")
    public Map<String, Object> diagnose(@RequestBody Map<String, String[]> symptomsRequest) {
        System.out.println("Symptômes : "+ symptomsRequest);
        String[] symptoms = symptomsRequest.get("symptoms");
        System.out.println("Symptômes values : "+ symptoms);
        return inferenceService.getDiagnosis(symptoms);
    }

    @GetMapping("/symptoms")
    public Map<String, Object> getSymptoms() {
        return inferenceService.getSymptoms();
    }
    
}
