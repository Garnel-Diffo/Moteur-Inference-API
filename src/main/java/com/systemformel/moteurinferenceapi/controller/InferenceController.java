package com.systemformel.moteurinferenceapi.controller;

import com.systemformel.moteurinferenceapi.service.InferenceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@RestController
@RequestMapping("/api/inference")
public class InferenceController {

    @Autowired
    private InferenceService inferenceService;

    @PostMapping("/diagnose")
    // public Map<String, String> diagnose(@RequestBody Map<String, String[]> symptomsRequest) {}
}
