package com.systemformel.moteurinferenceapi.controller;

import com.systemformel.moteurinferenceapi.service.InferenceService;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/inference")
public class InferenceController {

    private InferenceService inferenceService;

    public InferenceController(InferenceService inferenceService) {
        this.inferenceService = inferenceService;
    }

    @PostMapping("/diagnose")
    public Map<String, String> diagnose(@RequestBody Map<String, String[]> symptomsRequest) {
        String[] symptoms = symptomsRequest.get("symptoms");
        return inferenceService.getDiagnosis(symptoms);
    }
}
