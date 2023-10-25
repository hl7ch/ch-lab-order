<!-- markdownlint-disable MD001 MD033 MD041 -->

### Etude de cas 1 : Suspicion de thrombose veineuse profonde

Un patient, Hans Guggindieluft, se présente au cabinet de groupe d'Olten du Dr méd. Marc Mustermann le 09.03.2016. Il s'identifie verbalement via ses données de base comme Hans Guggindieluft, 01.01.1981. Il rapporte une douleur peu claire dans la partie inférieure de la jambe gauche ainsi qu'une douleur respiratoire et une toux concomitantes. Le médecin procède à l'anamnèse et à l'examen physique et commande les paramètres de laboratoire suivants :

* Numération sanguine, y compris le différentiel
* CRP
* D-dimère

Le médecin effectue lui-même l'hémogramme et la détermination de la CRP à l'aide de diagnostics au point de service ; le diagnostic des D-dimères est prescrit en tant que diagnostic quantitatif dans un laboratoire expéditeur externe. Pour obtenir l'échantillon, une prise de sang est effectuée alors que le patient est allongé (1 tube EDTA, 2 tubes citrate de 5 ml). La commande est transmise au laboratoire externe et l'échantillon est envoyé au laboratoire d'expédition externe par courrier commandé par téléphone. Les résultats des diagnostics internes du point de service (numération sanguine et CRP) sont saisis dans la fiche de laboratoire du patient dans le logiciel du cabinet du médecin (manuellement ou via des interfaces électroniques installées localement). Une ordonnance du médecin est donc délivrée au patient pour l'auto-administration d'un agent antithrombotique.
Les résultats du laboratoire expéditeur arrivent électroniquement chez le médecin généraliste le soir même et sont également inscrits sur la fiche de laboratoire du patient. En utilisant le présent format d'échange, ce processus peut être entièrement automatisé. Après une demande téléphonique du médecin du laboratoire d'envoi en raison d'un résultat limite pour les D-dimères, l'information est donnée qu'une thrombose veineuse profonde ne peut être exclue dans cette situation au moyen des D-dimères et le patient est donc rappelé le lendemain pour qu'une échographie des jambes soit effectuée.

Exemple FHIR correspondant qui répond à cette spécification :
[1-tvt.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/1-tvt.xml)
[1-tvt.json](https://fhir.ch/ig/ch-lab-order/Questionnaire-1-tvt.json.html)

Comme il s'agit d'une thrombose veineuse primaire de la jambe, le Dr Eva Erlenmeier du laboratoire Pipette envoie un retour d'information au Dr Mustermann, lui recommandant d'effectuer un dépistage de la thrombophilie, qui comprend les analyses suivantes :
Quick, aPTT, fibrinogène, antithrombine (funct.), temps de thrombine I 2,5 NIH/ml, résistance APC, D-dimères, protéine C, (méthode aPTT), protéine S antigène.
Les analyses peuvent être effectuées directement à partir des échantillons des tubes de citrate envoyés.

### Etude des cas 2: Suspicion de coqueluche

Une mère se rend chez le médecin de famille Peter Presto du cabinet de groupe d'Olten avec son fils de 6 ans Emil Kummer, né le 5 mai 2014, car l'enfant tousse de plus en plus depuis quinze jours, avec des quintes de toux avec crampes, et a de la fièvre. La réceptionniste du médecin mesure la fièvre, prélève un échantillon de Sang au bout du doigt du fils, détermine la CRP et prépare un frottis sanguin. Le médecin soupçonne une infection virale, mais veut exclure la coqueluche, bien que l'enfant ait été vacciné contre cette maladie. Comme il est pressé par le temps en raison d'une urgence, il ne veut pas faire lui-même le prélèvement de gorge nécessaire, mais demande à la mère d'accompagner l'enfant au laboratoire voisin pour que le prélèvement soit effectué en toute tranquillité.
Il prépare un ordre de laboratoire pour effectuer une PCR coquelucheuse sur l'écouvillon de gorge de l'enfant et donne l'ordre à la mère. La mère elle-même n'est pas sûre d'avoir été vaccinée contre la coqueluche. Par conséquent, le médecin de famille Peter Presto lui administre immédiatement le vaccin contre la coqueluche et recommande de faire de même pour le père et les grands-parents de l'enfant. Entre-temps, l'AMP a examiné au microscope le frottis sanguin du fils et trouve beaucoup de lymphocytes réactifs, ce qui lui semble suspect. Elle a des doutes et interroge le médecin, qui donne l'ordre de remettre les frottis sanguins de l'enfant à la mère et de les faire examiner de plus près au laboratoire.
La mère arrive au laboratoire avec son fils, où l'ordre du médecin est d'abord d'établir l'identité du fils. Ensuite, un écouvillon pharyngé et une ponction veineuse cubitale droite sont prélevés sur l'enfant dans la salle de prélèvement sanguin du laboratoire et transmis au laboratoire avec les frottis sanguins et l'ordonnance d'examen du médecin.

Questionnaire FHIR correspondant qui répond à cette spécification :

[2-pertussis.xml](https://fhir.ch/ig/ch-lab-order/Questionnaire-2-pertussis.xml.html)
[2-pertussis.json](https://fhir.ch/ig/ch-lab-order/Questionnaire-2-pertussis.json.html)

### Etude des cas 3: Contrôle annuel gynécologique

L'assistant du médecin du service de gynécologie du cabinet de groupe d'Olten, le Dr Peter Pap, prépare les consultations du lendemain. Comme le cabinet ne dispose que d'un laboratoire minimal, certains patients sont envoyés à la clinique externe du laboratoire Pipette voisin avant le rendez-vous, dont la jeune patiente Mme Marina Rubella, née le 8. 8. 1992. Dans son logiciel de cabinet, l'AMP prescrit les analyses standard convenues avec le laboratoire pour le contrôle gynécologique de 3 ans de la patiente Rubella. Ceci inclut également la prise de sang pour le sérologue pour d'éventuelles prescriptions de suivi.
Le laboratoire transmet les résultats au cabinet au plus tard 90 minutes après la prise de sang. Le Dr Pap prescrit les ordonnances suivantes lors de la consultation :

* Cytologie cervicale gynécologique : Frottis cervical - si indiqué, la détection et le typage du HPV (virus du papillome humain) doivent également être effectués.
 Matériel de prélèvement selon les instructions du laboratoire.
 L'examen cytologique est réalisé dans le laboratoire Pipette. Le laboratoire Pipette ne réalise pas lui-même le typage.
* Bilan urinaire partiel (test Combur9) : effectué par l'AMP au cabinet : les paramètres suivants sont examinés : pH, leucocytes, érythrocytes, nitrites, protéines, glucose, cétones, urobilinogène, bilirubine (examens semi-quantitatifs, les résultats sont probablement saisis manuellement dans le système du laboratoire du cabinet).
* Bactériologie urinaire : matériel de prélèvement selon les instructions du laboratoire.
Bactérie générale, y compris les champignons à la pipette du laboratoire.
La transmission de l'ordonnance est déclenchée par l'AMP (heure de prélèvement).
* Ordre complémentaire "Dépistage avant grossesse" : Tous les tests peuvent être réalisés à partir du matériel (sérum, sang EDTA) prélevé au préalable en ambulatoire (anticorps anti-hépatite Bc, VIH 1+2 (Ak+p24), IgG rubéole, test de dépistage lues/syphilis).
* Mammographie : Commande pour l'Institut de radiologie Dr Curie.

Questionnaire FHIR correspondant qui répond à cette spécification :
[3-gyn.xml](https://fhir.ch/ig/ch-lab-order/Questionnaire-3-gyn.xml.html)
[3-gyn.json](https://fhir.ch/ig/ch-lab-order/Questionnaire-3-gyn.json.html)

### Etude des cas 4: Septicémie suspectée

La patiente Klebsiella Keller, né le 12. 12. 1975, se trouve depuis quelque temps à l'Hôpital cantonal. La nuit dernière, son état général s'est massivement détérioré. En raison d'une suspicion de septicémie, le médecin-chef responsable, le Dr Hans Hauser, ordonne un prélèvement de sang dans la matinée pour une hémoculture. 30 minutes plus tard, une autre hémoculture aérobie et une anaérobie sont prélevées, ainsi qu'un échantillon d'urine.
Les cinq échantillons sont ensuite traités dans la pipette du laboratoire externe. Là, les germes sont détectés dans tous les matériaux, puis identifiés par spectrométrie de masse. Les agents pathogènes "Klebsiella pneumoniae" et "Escherichia coli" ont été détectés dans les quatre flacons d'hémoculture, et la bactérie "Streptococcus mitis" a également été détectée dans un flacon d'aérobiose. Le germe identifié dans l'échantillon d'urine n'est normalement pas pathogène.
Un antibiogramme est réalisé pour les trois pathogènes détectés dans le sang. Celui-ci montre que les deux substances actives "amoxicilline+acide clavulanique" et "ceftriaxone" sont efficaces contre les trois germes. Le microbiologiste informe régulièrement le Dr Hans Hauser des différents résultats partiels.

Questionnaire FHIR correspondant à cette spécification:
[4-sepsis.xml](https://fhir.ch/ig/ch-lab-order/Questionnaire-4-sepsis.xml.html)
[4-sepsis.json](https://fhir.ch/ig/ch-lab-order/Questionnaire-4-sepsis.json.html)

### Etude des cas 5: Commande collective "Surveillance biologique de la SUVA"

Les entreprises qui travaillent avec des substances dangereuses pour la santé et dans lesquelles les employés sont exposés à des risques particuliers sont soumises à un dépistage de la santé au travail par la SUVA. La surveillance biologique est l'une des possibilités de contrôle. Elle permet d'évaluer l'exposition des travailleurs à des agents chimiques en déterminant les agents ou les métabolites dans le matériel biologique (par exemple l'urine).
L'AMV (Prévention Médicale du Travail) de la SUVA envoie au laboratoire une liste mensuelle avec les informations suivantes par entreprise (ordre collectif) :

* Établissement (nom, adresse, numéro d'établissement).
* Nombre de salariés pour le suivi biologique
* Examens à effectuer (p.ex. arsenic, plomb, mercure, acide mandélique).
Les entreprises reçoivent de l'AMV une liste comprenant des étiquettes avec les employés concernés. Nous prenons ici le document d'un employé Beat Borer, né le 6. 6. 1986. Le laboratoire imprime les bons de commande avec le numéro de l'entreprise et envoie le nombre nécessaire de gobelets à urine et de bons de commande aux entreprises. Dans l'entreprise, les formulaires de commande et les gobelets à urine sont étiquetés avec les étiquettes fournies par l'AMV et remis aux employés. Les échantillons, y compris le bon de commande, sont envoyés de l'entreprise au laboratoire.

[Surveillance biologique SUVA]<https://www.suva.ch/de-CH/material/Factsheets/biologisches-monitoring-und-biologische-arbeitsstofftoleranzwerte>

Questionnaire FHIR correspondant à cette spécification:
[5-biol-monit.xml](https://fhir.ch/ig/ch-lab-order/Questionnaire-5-biol-monit.xml.html)
[5-biol-monit.json](https://fhir.ch/ig/ch-lab-order/Questionnaire-5-biol-monit.json.html)

### Étude de cas n° 6 : suspicion de mélanome, demande d'examen histopathologique

Une patiente de 45 ans s'est présentée pour un examen régulier de la peau et cette lésion a été observée : Naevus de jonction composé d'une zone séborrhéique à l'extrémité supérieure et d'un réseau atypique constitué de nombreux points, structures, etc. distincts, suggérant une implication mélanocytaire. Excision. Joindre les images dermatoscopiques // TODO Spécimen : Ellipse cutanée de 29 x 11 x 5 mm Site corporel : Dos paralombaire gauche

L'échantillon de peau, le formulaire de commande et l'image dermatoscopique sont envoyés au laboratoire.

Questionnaire FHIR correspondant à cette spécification:
[6-histopath.xml](https://fhir.ch/ig/ch-lab-order/Questionnaire-6-histopath.xml.html)
[6-histopath.json](https://fhir.ch/ig/ch-lab-order/Questionnaire-6-histopath.json.html)
