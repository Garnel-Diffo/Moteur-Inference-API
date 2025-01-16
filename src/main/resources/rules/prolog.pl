% Faits
symptom(toux).
symptom(fatigue).
symptom(maux_de_tete).
symptom(vertiges).
symptom(palpitations_cardiaques).
symptom(essouflement).
symptom(fatigue).
symptom(douleur_thoracique).
symptom(vision_floue).
symptom(soif_excessive).
symptom(envie_frequente_uriner).
symptom(perte_de_poids_inexpliquee).
symptom(cicatriation_lente).
symptom(allergieRespiratoire).
symptom(eternuement_frequents).
symptom(rhinorrhee).
symptom(toux_persistante).
symptom(sensation_de_poids_dans_la_poitrine).
symptom(respiration_sifflante).
symptom(brulure_estomac).
symptom(toux_chronique).
symptom(nausees).
symptom(difficulte_a_avaler).
symptom(fatigue_excessive).
symptom(paleur_de_la_peau).
symptom(palpitations).
symptom(vertiges).
symptom(langue_douloureuse).
symptom(crampes_musculaires).
symptom(hypercholesterolemie).
symptom(douleur_dans_le_bas_du_dos).
symptom(raideur_dans_le_bas_du_dos).
symptom(dou).
symptom(pertes_de_mobilite).
symptom(sensibilite_accrue).
symptom(douleur_intense).
symptom(vomissements).
symptom(trouble_visuels).
symptom(fatigue_extreme).
symptom(douleur_pulsative).
symptom(crampe_abdominale).
symptom(ballonnements).
symptom(distension_abdominale).
symptom(trouble_du_transit_intestinal).
symptom(selles_anormales).

symptom(rhume).
symptom(fievre).
symptom(toux).
symptom(maux_de_gorge).
symptom(douleurs_musculaires).
symptom(fatigue).
symptom(nez_bouche).
symptom(otorrhee).
symptom(sensation_de_poids_dans_l_oreille).
symptom(douleur_auriculaire).
symptom(sinusite).
symptom(conjonctivite).
symptom(vomissements).
symptom(diarrhee).
symptom(douleur_abdominale).
symptom(rougeur_peau).
symptom(grattage_peau).
symptom(mictions_frequentes).
symptom(brulure_urinaire).

symptom(douleur_auriculaire_externe).
symptom(rougeur_peau).
symptom(douleur_poumon).
symptom(toux_sèche).
symptom(fievre).
symptom(grands_papules).
symptom(démangeaisons).
symptom(ampoules).
symptom(douleur_urinaire).
symptom(douleurs_articulaires).
symptom(tristesse).
symptom(fatigue).
symptom(perte_appetit).
symptom(prise_poids).
symptom(essoufflement).
symptom(maux_de_tete).
symptom(sensation_de_pesanteur_jambes).
symptom(douleur_tendon).

disease(covid19).
disease(hypertension).
disease(diabeteType2).
disease(allergieRespiratoire).
disease(asthme).
disease(reflux_gastro_oesophagien).
disease(anemie_ferriprive).
disease(hypercholesterolemie).
disease(lombalgie).
disease(migraine).

disease(rhume_commun).
disease(grippe).
disease(angine).
disease(bronchite_aigue).
disease(otite_moyenne).
disease(sinusite_aigue).
disease(conjonctivite).
disease(gastro_enterite).
disease(dermatite_atopique).
disease(infection_urinaire).

disease(otite_externe).
disease(pneumonie).
disease(varicelle).
disease(zona).
disease(cystite).
disease(psoriasis).
disease(depression).
disease(hypothyroïdie).
disease(insuffisance_veineuse).
disease(tendinite).

% Règles
diagnosis(covid19) :- symptom(fièvre), symptom(toux), symptom(fatigue).

diagnosis(hypertension) :- 
    symptom(maux_de_tete), symptom(vertiges), symptom(palpitations_cardiaques),
    symptom(essouflement), symptom(fatigue), symptom(douleur_thoracique),
    symptom(vision_floue).

diagnosis(diabeteType2) :- 
    symptom(soif_excessive), symptom(envie_frequente_uriner),
    symptom(perte_de_poids_inexpliquee), symptom(cicatriation_lente),
    symptom(fatigue).

diagnosis(allergieRespiratoire) :- 
    symptom(eternuement_frequents), symptom(rhinorrhee),
    symptom(toux_persistante), symptom(sensation_de_poids_dans_la_poitrine).

diagnosis(asthme) :- 
    symptom(essouflement), symptom(respiration_sifflante),
    symptom(toux_persistante), symptom(sensation_de_poids_dans_la_poitrine).

diagnosis(reflux_gastro_oesophagien) :- 
    symptom(brulure_estomac), symptom(toux_chronique),
    symptom(sensation_de_poids_dans_la_poitrine), symptom(nausees),
    symptom(difficulte_a_avaler).

diagnosis(anemie_ferriprive) :- 
    symptom(fatigue_excessive), symptom(paleur_de_la_peau),
    symptom(essouflement), symptom(palpitations), symptom(vertiges),
    symptom(langue_douloureuse), symptom(crampes_musculaires).

diagnosis(hypercholesterolemie) :- 
    symptom(fatigue_excessive), symptom(essouflement), 
    symptom(douleur_thoracique).

diagnosis(lombalgie) :- 
    symptom(douleur_dans_le_bas_du_dos), symptom(raideur_dans_le_bas_du_dos),
    symptom(dou), symptom(pertes_de_mobilite), symptom(sensibilite_accrue).

diagnosis(migraine) :- 
    symptom(douleur_intense), symptom(nausees),
    symptom(vomissements), symptom(trouble_visuels), 
    symptom(fatigue_extreme), symptom(douleur_pulsative).


diagnosis(rhume_commun) :- 
    symptom(rhume), symptom(toux), symptom(nez_bouche).

diagnosis(grippe) :- 
    symptom(fievre), symptom(toux).

diagnosis(angine) :- 
    symptom(maux_de_gorge), symptom(fievre), 
    symptom(douleurs_musculaires).

diagnosis(bronchite_aigue) :- 
    symptom(toux), symptom(douleurs_musculaires), 
    symptom(fatigue), symptom(essoufflement).

diagnosis(otite_moyenne) :- 
    symptom(douleur_auriculaire), symptom(otorrhee), 
    symptom(sensation_de_poids_dans_l_oreille).

diagnosis(sinusite_aigue) :- 
    symptom(sinusite), symptom(douleur_abdominale), 
    symptom(fievre).

diagnosis(conjonctivite) :- 
    symptom(rougeur_peau), symptom(grattage_peau), 
    symptom(douleur_abdominale).

diagnosis(gastro_enterite) :- 
    symptom(vomissements), symptom(diarrhee), 
    symptom(douleur_abdominale).

diagnosis(dermatite_atopique) :- 
    symptom(rougeur_peau), symptom(grattage_peau).

diagnosis(infection_urinaire) :- 
    symptom(mictions_frequentes), symptom(brulure_urinaire).


diagnosis(otite_externe) :- 
    symptom(douleur_auriculaire_externe), symptom(rougeur_peau).

diagnosis(pneumonie) :- 
    symptom(douleur_poumon), symptom(toux_sèche), 
    symptom(fievre), symptom(essoufflement).

diagnosis(varicelle) :- 
    symptom(grands_papules), symptom(démangeaisons), 
    symptom(ampoules), symptom(fievre).

diagnosis(zona) :- 
    symptom(douleur_poumon), symptom(rougeur_peau),
    symptom(ampoules).

diagnosis(cystite) :- 
    symptom(douleur_urinaire), symptom(fievre), 
    symptom(douleurs_articulaires).

diagnosis(psoriasis) :- 
    symptom(rougeur_peau), symptom(démangeaisons).

diagnosis(depression) :- 
    symptom(tristesse), symptom(fatigue), 
    symptom(perte_appetit), symptom(prise_poids).

diagnosis(hypothyroïdie) :- 
    symptom(fatigue), symptom(prise_poids), 
    symptom(douleurs_articulaires).

diagnosis(insuffisance_veineuse) :- 
    symptom(sensation_de_pesanteur_jambes), symptom(douleurs_articulaires).

diagnosis(tendinite) :- 
    symptom(douleur_tendon), symptom(douleurs_articulaires).

% Association entre symptôme et maladie
symptome_associe_maladie(Symptome, Maladie) :- diagnosis(Maladie).