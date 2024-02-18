<!-- markdownlint-disable MD001 MD033 MD041 -->
<!--
╭──────────────── case-studies-french  ─────────────────────╮
│  UC-english is original, german and french are dependent  │
╰───────────────────────────────────────────────────────────╯
-->
### CH LAB-Order 0-best-practice

<!-- some explanations for the case studies -->

#### Best practice example: Contrôle de l'effet de l'anticoagulation szenario

Mme Birgit Blum a fait une chute malencontreuse en skiant et a subi une fracture multifragmentaire du plateau tibial. Elle a été transférée par hélicoptère au Kantonsspital, un hôpital central, où elle attend son opération. La patiente reçoit quotidiennement Liquemin 5000 E s.c. pour prévenir les événements thromboemboliques, et l'effet. A Pour surveiller l'effet de ce traitement, des analyses sanguines régulières sont effectuées pour déterminer l'activité anti-Xa. Un récipient spécial contenant un additif au citrate est utilisé à cet effet. L'échantillon doit être centrifugé et refroidi dans l'heure qui suit. Les maladies cardiaques constituent un élément important de la liste des problèmes de la patiente.

[Order Document with Service Request](Bundle-0-best-practice-document-with-sr.html)

### CH LAB-Order 1-tvt szenario

#### Soupçon de thrombose veineuse profonde szenario

Un patient, Tobias Timmermann, se présente au Dr. med. Marc Mustermann au cabinet de groupe d'Olten le 09.03.2016. Il s'identifie verbalement via ses données de base comme Tobias Timmermann, 01.01.1984. Il signale des douleurs peu claires dans la jambe gauche ainsi que des douleurs respiratoires et une toux apparaissant simultanément. Le médecin procède à l'anamnèse et à l'examen physique et prescrit les paramètres de laboratoire suivants :

* numération des cellules sanguines, y compris différenciation
* CRP
* D-dimère

Le médecin effectue lui-même l'hémogramme et la détermination de la CRP au moyen d'un diagnostic au point de service, le diagnostic des D-dimères est prescrit en tant que diagnostic quantitatif dans un laboratoire d'envoi externe. Pour obtenir l'échantillon, un échantillon de sang est prélevé en position allongée (1 tube EDTA, 2 tubes citrate de 5 ml). La commande est transmise au laboratoire externe et l'échantillon est envoyé au laboratoire d'envoi externe par courrier commandé par téléphone. Les résultats des diagnostics internes au point de service (numération sanguine et CRP) sont saisis dans la fiche de laboratoire du patient dans le logiciel du cabinet médical (manuellement ou par le biais d'interfaces électroniques installées localement). Une ordonnance est alors délivrée par le médecin au patient pour l'auto-administration d'un agent anti-thrombotique. Les résultats du laboratoire d'envoi parviennent électroniquement au médecin généraliste le soir même et sont également inscrits sur la fiche de laboratoire du patient. En utilisant le format d'échange actuel, ce processus peut être entièrement automatisé. Après une demande téléphonique du médecin du laboratoire expéditeur en raison d'un résultat D-dimère limite, l'information est donnée qu'une thrombose veineuse profonde ne peut pas être exclue dans cette situation au moyen du D-dimère et le patient est donc rappelé le jour suivant pour une échographie des jambes.

Comme il s'agit probablement d'une thrombose primaire de la veine de la jambe, le Dr Eva Erlenmeier du laboratoire Pipette envoie un retour au Dr Mustermann avec la recommandation d'effectuer un dépistage de la thrombophilie, qui comprend les analyses suivantes : Quick, aPTT, fibrinogène, antithrombine (funct.), temps de thrombine I 2.5 NIH/ml, résistance APC, D-dimères, protéine C, (méthode aPTT), protéine S antigène. Les analyses peuvent être effectuées directement à partir des échantillons des tubes de citrate envoyés.

[Order Document with ServiceRequest](Bundle-1-tvt-document-with-sr.html)

[Order Document with ServiceRequest and Form](Bundle-1-tvt-document-with-sr-and-form.html)

### CH LAB-Order 2-pertussis

#### Suspicion de coqueluche szenario

Une mère se rend chez le médecin de famille Peter Presto du cabinet de groupe d'Olten avec son fils Emil Kummer, 6 ans, né le 5 mai 2014, car l'enfant tousse de plus en plus depuis une quinzaine de jours, avec des quintes de toux, et a de la fièvre. La réceptionniste du médecin mesure la fièvre, prélève un échantillon de sang au bout du doigt, détermine la CRP et prépare un frottis sanguin. Le médecin soupçonne une infection virale, mais veut exclure la coqueluche, bien que l'enfant ait été vacciné contre cette maladie. Comme il est pressé par l'urgence, il ne veut pas effectuer lui-même le prélèvement de gorge nécessaire, mais demande à la mère d'accompagner l'enfant au laboratoire le plus proche pour que le prélèvement soit effectué en toute tranquillité. Il prépare un ordre de laboratoire pour effectuer une PCR coqueluche sur le prélèvement de gorge de l'enfant et donne l'ordre à la mère. La mère elle-même n'est pas sûre d'avoir été vaccinée contre la coqueluche.
En conséquence, le médecin de famille Peter Presto la vaccine immédiatement contre la coqueluche et recommande de faire de même pour le père et les grands-parents de l'enfant. Entre-temps, l'AMP a examiné au microscope le frottis sanguin de l'enfant et trouve beaucoup de lymphocytes réactifs, ce qui lui semble suspect. Elle n'est pas sûre et interroge le médecin, qui donne l'ordre de remettre les frottis sanguins de l'enfant à la mère et de les faire examiner de plus près au laboratoire. La mère arrive au laboratoire avec son fils, où le médecin ordonne d'abord d'établir l'identité du fils. Ensuite, un prélèvement pharyngé et une ponction cubitale droite sont effectués sur l'enfant dans la salle de prélèvement sanguin du laboratoire et transmis au laboratoire avec les frottis sanguins et l'ordre d'examen du médecin.

[Order Document with ServiceRequest](Bundle-2-pertussis-document-with-sr.html)

[Order Document with ServiceRequest and Form](Bundle-2-pertussis-document-with-sr-and-form.html)

### CH LAB-Order 3-gyn

#### Contrôle gynécologique annuel szenario

Le docteur Peter Pap, assistant du service de gynécologie du cabinet de groupe d'Olten, prépare les consultations du lendemain. Comme le cabinet ne dispose que d'un laboratoire minimal, certaines patientes sont envoyées à la clinique ambulatoire du laboratoire Pipette, situé à proximité, avant le rendez-vous, notamment la jeune patiente Mme Marina Rubella, née le 8. 8. 1992. Dans son logiciel de cabinet, l'AMP prescrit les analyses standard convenues avec le laboratoire pour le contrôle gynécologique triennal de la patiente Rubella. Ceci inclut également le prélèvement sanguin pour le sérotonaire en vue d'éventuelles prescriptions de suivi. Le laboratoire transmet les résultats au cabinet au plus tard 90 minutes après la prise de sang. Le Dr Pap prescrit les ordonnances suivantes lors de la consultation :

* Cytologie cervicale gynécologique : Frottis de Papanicolaou - si cela est indiqué, la détection et le typage du HPV (virus du papillome humain) doivent également être effectués. Matériel de prélèvement selon les instructions du laboratoire. L'examen cytologique est effectué dans le laboratoire Pipette. Le laboratoire Pipette n'effectue pas le typage lui-même.
* Statut urinaire partiel (test Combur9) : effectué par le MPA dans le cabinet : les paramètres suivants sont examinés : pH, leucocytes, érythrocytes, nitrites, protéines, glucose, cétones, urobilinogène, bilirubine (examens semi-quantitatifs, les résultats sont probablement saisis manuellement dans le système du laboratoire du cabinet).
* Bactériologie urinaire : matériel de prélèvement selon les instructions du laboratoire. Bactéries générales, y compris les champignons, à la pipette du laboratoire. La transmission de la commande est déclenchée par le MPA (temps de collecte).
* Ordonnance complémentaire "Dépistage avant la grossesse" : Tous les tests peuvent être effectués à partir du matériel (sérum, sang EDTA) prélevé au préalable dans la clinique ambulatoire (anticorps de l'hépatite Bc, VIH 1+2 (Ak+p24), IgG de la rubéole, test de dépistage de la lésion/syphilis).

[Order Document with ServiceRequest](Bundle-3-gyn-document.html)

[Order Document with ServiceRequest and Form](Bundle-3-gyn-document-with-sr-and-form.html)

### CH LAB-Order 4-sepsis

#### Septicémie présumée szenario

La patiente Sara Speckmann, née le 12. 12. 1975, se trouve à l'hôpital cantonal depuis un certain temps. La nuit dernière, son état général s'est fortement dégradé. Comme il y a suspicion de septicémie, le médecin-chef responsable, le Dr Hans Hauser, ordonne une prise de sang dans la matinée en vue d'une hémoculture. 30 minutes plus tard, une autre hémoculture aérobie et une anaérobie sont prélevées, ainsi qu'un échantillon d'urine. Les cinq échantillons sont ensuite traités dans le laboratoire externe Pipette. Les germes y sont détectés dans tous les matériaux et identifiés par spectrométrie de masse. Les pathogènes "Klebsiella pneumoniae" et "Escherichia coli" ont été détectés dans les quatre flacons d'hémoculture, et la bactérie "Streptococcus mitis" a également été détectée dans un flacon aérobie. Le germe identifié dans l'échantillon d'urine n'est normalement pas pathogène. Un antibiogramme est réalisé pour les trois pathogènes détectés dans le sang. Il en ressort que les deux substances actives "amoxicilline+acide clavulanique" et "ceftriaxone" sont efficaces contre les trois germes. Le microbiologiste informe régulièrement le Dr Hans Hauser des différents résultats partiels.

[Order Document with ServiceRequest](Bundle-4-sepsis-document-with-sr.html)

[Order Document with ServiceRequest and Form](Bundle-4-sepsis-document-with-sr-and-form.html)

### CH LAB-Order 5-biol-monit

#### Ordre collectif “Surveillance biologique SUVA” szenario

Les entreprises qui travaillent avec des substances dangereuses pour la santé et dans lesquelles les employés sont exposés à des risques particuliers sont soumises à un examen de santé au travail par la SUVA. La surveillance biologique est l'une des possibilités de contrôle. Il permet d'évaluer l'exposition des travailleurs à des agents chimiques en déterminant les agents ou les métabolites dans le matériel biologique (par exemple l'urine). La prévention médicale du travail (AMV) de la SUVA envoie au laboratoire une liste mensuelle contenant les informations suivantes par entreprise (ordre collectif) :

* Établissement (nom, adresse, numéro d'établissement)
* Nombre d'employés pour le contrôle biologique
* Examens à effectuer (par exemple arsenic, plomb, mercure, acide mandélique). Les entreprises reçoivent de l'AMV une liste comprenant les étiquettes des employés concernés. Nous prenons ici le document d'un employé, Beat Borer, né le 6. 6. 1986. Le laboratoire imprime les bons de commande avec le numéro de l'entreprise et envoie le nombre nécessaire de gobelets d'urine et de bons de commande aux entreprises. Dans l'entreprise, les bons de commande et les gobelets d'urine sont étiquetés avec les étiquettes fournies par l'AMV et remis aux employés. Les échantillons, y compris le bon de commande, sont envoyés de l'entreprise au laboratoire.

[Surveillance biologique SUVA](https://www.suva.ch/de-CH/material/Factsheets/biologisches-monitoring-und-biologische-arbeitsstofftoleranzwerte)

[Order Document with ServiceRequest](Bundle-5-biol-monit-document-with-sr.html)

[Order Document with ServiceRequest and Form](Bundle-5-biol-monit-document-with-sr-and-form.html)

### CH LAB-Order 6-histopath

#### Suspected Melanoma, order for histopathology examination szenario

Simone Studer, une patiente de 45 ans, s'est présentée à l'Arztpraxis du dermatologue Armin Ahrens pour un contrôle régulier de sa peau, et cette lésion a été notée : Naevus de jonction composé d'une zone séborrhéique à l'extrémité supérieure et d'un réseau atypique constitué de nombreux points, structures, etc. distincts, suggérant une implication mélanocytaire. Excision. Images dermatoscopiques jointes. Spécimen : Ellipse cutanée de 29 x 11 x 5 mm Site corporel :

* Dos paralombaire gauche
* L'échantillon de peau, le formulaire de commande et l'image dermatoscopique sont envoyés au laboratoire.

[Order Document with ServiceRequest](Bundle-6-histopath-document-with-sr.html)

[Order Document with ServiceRequest and Form](Bundle-6-histopath-document-with-sr-and-form.html)
