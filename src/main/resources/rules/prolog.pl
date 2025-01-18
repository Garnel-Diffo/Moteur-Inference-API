% Base de connaissances des maladies et leurs symptômes

% Symptomes
symptome(maux_de_tete).
symptome(vertiges).
symptome(palpitations_cardiaques).
symptome(essouflement).
symptome(fatigue).
symptome(douleur_thoracique).
symptome(vision_floue).
symptome(soif_excessive).
symptome(envie_frequente_uriner).
symptome(perte_de_poids_inexpliquee).
symptome(cicatriation_lente).
symptome(eternuement).
symptome(rhinorrhee).
symptome(toux_persistante).
symptome(sensation_de_poids_dans_la_poitrine).
symptome(respiration_sifflante).
symptome(brulure_estomac).
symptome(nausees).
symptome(difficulte_a_avaler).
symptome(fatigue_excessive).
symptome(paleur_de_la_peau).
symptome(palpitation).
symptome(langue_douloureuse).
symptome(crampes_musculaire).
symptome(douleur_dans_le_bas_du_dos).
symptome(raideur_dans_le_bas_du_dos).
symptome(pertes_de_mobilite).
symptome(sensibilite_accrue).
symptome(douleur_intense).
symptome(vomissements).
symptome(trouble_visuels).
symptome(fatigue_extreme).
symptome(douleur_pulsative).
symptome(douleur).
symptome(crampe_abdominale).
symptome(ballonnements).
symptome(distension_abdominale).
symptome(trouble_du_transit_intestinal).
symptome(selles_anormales).
symptome(rhume).
symptome(toux).
symptome(nez_bouche).
symptome(maux_de_gorge).
symptome(fievre).
symptome(douleurs_musculaires).
symptome(douleur_auriculaire).
symptome(otorrhee).
symptome(sensation_de_poids_dans_l_oreille).
symptome(sinusite).
symptome(yeux_rouges).
symptome(larmoiement).
symptome(diarrhee).
symptome(douleur_abdominale).
symptome(rougeur_peau).
symptome(grattage_peau).
symptome(demangeaisons).
symptome(mictions_frequentes).
symptome(brulure_urinaire).
symptome(douleur_auriculaire_externe).
symptome(douleur_poumon).
symptome(toux_seche).
symptome(grands_papules).
symptome(ampoules).
symptome(douleur_peau).
symptome(tristesse).
symptome(perte_appetit).
symptome(prise_poids).
symptome(douleurs_articulaires).
symptome(sensation_de_pesanteur_jambes).
symptome(douleur_tendon).
symptome(regurgitations_acides).
symptome(toux_chronique).
symptome(enrouement).
symptome(perte_de_voix).
symptome(mal_de_gorge).
symptome(ganglions_gonfles_du_cou).
symptome(douleur_auriculaire_externe_intense).
symptome(rougeur_peau_oreille).
symptome(gonflement_oreille).
symptome(ecoulement_oreille).
symptome(difficultes_respiratoires).
symptome(nez_qui_coule).
symptome(toux_avec_crachats_purulents).
symptome(fievre_elevee).
symptome(frissons).
symptome(urticaire).
symptome(gonflement_visage).
symptome(constipation_ou_diarrhee).
symptome(mucosites_dans_les_selles).
symptome(diarrhee_chronique).
symptome(carences_nutritionnelles).

% Maladies 01-10
symptomes_maladie(hypertension, [maux_de_tete, vertiges, palpitations_cardiaques, essouflement, fatigue, douleur_thoracique, vision_floue]).
symptomes_maladie(diabeteType2, [soif_excessive, envie_frequente_uriner, perte_de_poids_inexpliquee, cicatriation_lente, fatigue]).
symptomes_maladie(allergieRespiratoire, [eternuement, rhinorrhee, toux_persistante, sensation_de_poids_dans_la_poitrine]).
symptomes_maladie(asthme, [essouflement, respiration_sifflante, toux_persistante, sensation_de_poids_dans_la_poitrine]).
symptomes_maladie(reflux_gastro_oesophagien, [brulure_estomac, toux_persistante, sensation_de_poids_dans_la_poitrine, nausees, difficulte_a_avaler]).
symptomes_maladie(anemie_ferriprive, [fatigue_excessive, paleur_de_la_peau, essouflement, palpitation, vertiges, langue_douloureuse, crampes_musculaire]).
symptomes_maladie(hyperchlolesterolemie, [fatigue_excessive, essouflement, douleur_thoracique]).
symptomes_maladie(lombalgie, [douleur_dans_le_bas_du_dos, raideur_dans_le_bas_du_dos, pertes_de_mobilite, sensibilite_accrue]).
symptomes_maladie(migraine, [douleur_intense, nausees, vomissements, trouble_visuels, fatigue_extreme, douleur_pulsative]).
symptomes_maladie(colopathie_fonctionnelle, [douleur, crampe_abdominale, ballonnements, distension_abdominale, trouble_du_transit_intestinal, selles_anormales, nausees]).

% Maladies 10-20
symptomes_maladie(rhume_commun, [rhume, toux, nez_bouche, maux_de_gorge, fievre]).
symptomes_maladie(grippe, [fievre, toux, maux_de_tete]).
symptomes_maladie(angine, [maux_de_gorge, fievre, douleurs_musculaires]).
symptomes_maladie(bronchite_aigue, [toux, douleurs_musculaires, fatigue, essoufflement]).
symptomes_maladie(otite_moyenne, [douleur_auriculaire, otorrhee, sensation_de_poids_dans_l_oreille, fievre]).
symptomes_maladie(sinusite_aigue, [sinusite, eternuement, fievre, nez_bouche, toux]). 
symptomes_maladie(conjonctivite, [rougeur_peau, grattage_peau, yeux_rouges, larmoiement]).
symptomes_maladie(gastro_enterite, [vomissements, diarrhee, douleur_abdominale, fievre, nausees]).
symptomes_maladie(dermatite_atopique, [rougeur_peau, grattage_peau, demangeaisons]).
symptomes_maladie(infection_urinaire, [mictions_frequentes, brulure_urinaire, douleur_abdominale]).

% Maladies 20-30
symptomes_maladie(otite_externe, [douleur_auriculaire_externe, rougeur_peau]).
symptomes_maladie(pneumonie, [douleur_poumon, toux_seche, fievre, essoufflement]).
symptomes_maladie(varicelle, [grands_papules, demangeaisons, ampoules, fievre]).
symptomes_maladie(zona, [rougeur_peau, douleur_peau, ampoules]).
symptomes_maladie(cystite, [douleur_urinaire, fievre]). 
symptomes_maladie(psoriasis, [rougeur_peau, demangeaisons]).
symptomes_maladie(depression, [tristesse, fatigue, perte_appetit, prise_poids]).
symptomes_maladie(hypothyroidie, [fatigue, prise_poids, douleurs_articulaires]).
symptomes_maladie(insuffisance_veineuse, [sensation_de_pesanteur_jambes, douleurs_articulaires]).
symptomes_maladie(tendinite, [douleur_tendon, douleurs_articulaires]).

% Maladies 30-40
symptomes_maladie(reflux_gastro_oesophagien_RGO, [brulure_estomac, regurgitations_acides, toux_chronique,  sensation_de_poids_dans_la_poitrine, nausees, difficulte_a_avaler]).
symptomes_maladie(laryngite, [enrouement, perte_de_voix, mal_de_gorge, toux_seche]).
symptomes_maladie(pharyngite, [mal_de_gorge, difficulte_a_avaler, ganglions_gonfles_du_cou, fievre]).
symptomes_maladie(otite_externe_aigue, [douleur_auriculaire_externe_intense, rougeur_peau_oreille, gonflement_oreille, ecoulement_oreille]).
symptomes_maladie(bronchiolite, [toux, respiration_sifflante, difficultes_respiratoires, fievre, nez_qui_coule]).
symptomes_maladie(pneumonie_bacterienne, [douleur_poumon, toux_avec_crachats_purulents, fievre_elevee, frissons, essoufflement]).
symptomes_maladie(pneumonie_virale, [toux_seche, fievre, maux_de_tete, douleurs_musculaires, fatigue]).
symptomes_maladie(allergie_alimentaire, [demangeaisons, urticaire, gonflement_visage, difficultes_respiratoires, vomissements, diarrhee]).
symptomes_maladie(syndrome_du_colon_irritable, [douleur_abdominale, ballonnements, constipation_ou_diarrhee,  mucosites_dans_les_selles]).
symptomes_maladie(maladie_coeliaque, [diarrhee_chronique, ballonnements, perte_de_poids, fatigue, carences_nutritionnelles]).

% Verifie si tous les symptômes donnes correspondent a une maladie
% Reponse a une requête directe avec les symptômes fournis
diagnosis(Maladie, SymptomesRequis) :-
    symptomes_maladie(Maladie, Symptomes),
    subset(SymptomesRequis, Symptomes).
