% Faits
symptom(fever).
symptom(cough).
symptom(fatigue).

disease(covid19).
disease(flu).

% Règles
diagnosis(covid19) :- symptom(fever), symptom(cough), symptom(fatigue).
diagnosis(flu) :- symptom(fever), symptom(cough).
