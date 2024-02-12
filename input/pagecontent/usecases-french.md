<!-- markdownlint-disable MD001 MD033 MD041 -->
<!--
╭───────────────────── UC -german ──────────────────────────╮
│  UC - english is original, this is a traduction           │
╰───────────────────────────────────────────────────────────╯
-->

### Cas d'utilisation 1: Commande de laboratoire

Le client (par exemple, un médecin) nécessite divers examens de laboratoire pour des diagnostics ultérieurs. Il crée un document de commande dans son système d'enregistrement médical électronique (EMR), qui contient les données administratives structurées conformément au guide de mise en œuvre CH ORF et dont le contenu est disponible dans l'EMR. À partir des analyses fournies par le LIS, il peut sélectionner celles qui l'aident dans sa question, et il peut également déterminer les échantillons correspondant aux analyses. Par exemple, il souhaite faire analyser la glycémie dans le sang et le liquide céphalorachidien. Le système de laboratoire peut stocker les informations sur les contenants nécessaires et les éventuels additifs dans le système. Les conditions préanalytiques sont spécifiées. Le document de commande est envoyé au système d'information de laboratoire (LIS).

Il peut également ajouter des informations sur le contexte clinique à la commande de laboratoire : liste des problèmes, liste des médicaments en cours, questions sur les analyses prescrites.

Document d'exemple: [CH LAB-Order 0-best-practice](Bundle-0-best-practice-document.html)

### Cas d'utilisation 2: Laboratoire Commande par Formulaire

Le donneur d'ordre (par ex. le médecin) a besoin de différents examens de laboratoire pour la suite du diagnostic. Pour ce faire, il crée dans le système d'information de son cabinet un document de commande contenant les informations nécessaires sur le patient, le test de laboratoire, les échantillons, etc. Les échantillons nécessaires (sérum, urine, liquide céphalorachidien) sont collectés dans des récipients correspondants et clairement attribués au document de commande (Specimen.identifier, Specimen.container.identifier). Les échantillons peuvent être analysés dans le laboratoire de l'entreprise ou doivent être envoyés par courrier ou par coursier au laboratoire externe. Le système d'information du laboratoire leur attribue alors un identifiant propre (Specimen.accessionIdentifier).

Un formulaire (Questionnaire) est présenté au donneur d'ordre, qui contient les informations suivantes :

* métadonnées de la commande
* Données relatives à l'ordre (order)
* Données sur le destinataire de la commande (receiver)
* Données relatives au patient
* Données relatives au donneur d'ordre (sender)
* Indications sur les éventuels destinataires d'une copie des résultats (receiverCopies)
* Indications sur la spécialité du laboratoire (lab specialty)
* Indications sur les examens demandés

* Indications sur le matériel d'échantillon, Specimen
  * Type : par exemple sérum, sang total, liquide céphalorachidien
  * Subject:Référence au patient
  * Collection : Indications sur le prélèvement, l'heure de prélèvement, la quantité, la méthode, le site de prélèvement (par ex. bras droit), la période de jeûne.
  * Conteneur, récipient : Identifier, Type
  * et autres

* Données relatives au service demandé
  * Servicerequest.category est RequestForLabExam
  * Question, motif de l'examen (ServiceRequest.reasonCode, ServiceRequest.reasonReference)
  * organisme payeur (caisse maladie, assurance accident, etc.)
  * et autres

En dehors de ce cas d'utilisation : les résultats sont ensuite communiqués au donneur d'ordre.

Document d'exemple: [CH LAB-Order 1-tvt by Form](Bundle-1-tvt-document-with-sr-and-form.html)

### Cas d'utilisation 3: Demande d'analyses supplémentaires du même échantillon

Il n'est pas rare que les résultats d'examens de laboratoire conduisent à demander d'autres tests sur le même échantillon. Ainsi, dans l'exemple 1-tvt, une thrombophilie veineuse peut être suspectée, de sorte que d'autres examens de laboratoire peuvent trouver des causes héréditaires telles que la mutation du facteur V de Leiden, la mutation du gène de la prothrombine, le déficit en antithrombine, etc.

* Informations sur le service demandé
  * Dans le ValueSet Servicerequest.category, RequestForAdditionalExam est sélectionné.

### Cas d'utilisation 4: Demande de résultats de laboratoire et d'images existants

Parfois, le médecin souhaite également obtenir des informations sur les analyses de laboratoire antérieures, par exemple pour évaluer la tendance de l'antigène prostatique spécifique (PSA). Cette question n'est pas abordée ici.

### Cas d'utilisation 5: Demande collective d'essais toxicologiques (surveillance biologique)

Ce cas d'utilisation correspond à l'exemple 5-biol-monit. Pour évaluer l'exposition des travailleurs aux substances chimiques, des mesures sur le lieu de travail sont complétées par des examens préventifs de la médecine du travail. Il est possible de déterminer les agents toxiques eux-mêmes ou leurs métabolites dans le sérum ou l'urine. La demande est lancée par le médecin du travail de l'entreprise ou de l'assurance. Il faut garder à l'esprit la problématique des fluctuations du personnel.

En voici quelques exemples :

* Médecine du travail : commande d'analyses de laboratoire pour un groupe d'ouvriers.
  * ServiceRequest.subject fait référence à un groupe
  * ServiceRequest.specimen fait référence à plusieurs échantillons (0 .. *)
* Industrie alimentaire : enquête sur l'hygiène des employés (p.ex. contamination par salmonelles)
* Enquêtes de police

Exemple de formulaire : [CH LAB-Order 5-biol-monit](Bundle-5-biol-monit-document-with-sr.html). Des listes de travail sont traitées, qui s'étendent sur une longue période (jours/semaines). En règle générale, certains examens sont demandés pour plusieurs patients.

### Cas d'utilisation 6: Suggestion d'examens supplémentaires ou alternatifs par le médecin de laboratoire (destinataire de l'ordonnance)

Après réception et traitement de l'ordonnance du laboratoire, il peut arriver que le médecin du laboratoire souhaite suggérer à l'auteur de l'ordonnance des examens complémentaires ou alternatifs. Il peut utiliser le document de commande reçu à cette fin, échanger les données personnelles de l'expéditeur et du destinataire par l'intermédiaire de son système d'information et le renvoyer avec les suggestions d'examens de laboratoire supplémentaires ou alternatifs.

* ServiceRequest.category : ProposalForAdditionalExam

### Cas d'utilisation 7: Constatations et données complémentaires sur l'état de santé du patient

Si cela présente un intérêt particulier pour l'interprétation de l'examen prescrit, il doit être possible d'inclure d'autres données sur l'état de santé du patient dans la commande du laboratoire. Il s'agit de résultats existants, de rapports médicaux et de documents.

* ServiceRequest.reasonCode ServiceRequest.reasonReference

### Cas d'utilisation 8: Informations sur l'échantillon, pré-analytique

Pour certains tests, la commande et l'échantillon ne suffisent pas à déterminer le résultat du laboratoire. Dans ce cas, des observations sur le prélèvement de l'échantillon doivent être fournies au laboratoire. La détermination de la clairance de la créatinine dans les urines de 24 heures en est un exemple. À cette fin, le laboratoire doit connaître la quantité d'urine collectée au cours d'une certaine période. Le donneur d'ordre fournit donc au laboratoire le volume d'urine, ainsi qu'un échantillon d'urine et de sérum.

* Quantité d'urine collectée : Specimen.collection.quantity.

* Début et fin de la collecte d'urine : Specimen.collection.collected[collectedPeriod] - start - end

Un autre exemple est le test de fonction Synacthène (ACTH), où un échantillon de sang basal est prélevé le matin à jeun, suivi immédiatement par l'injection de Synacthène, et un second échantillon de sang est prélevé une heure plus tard.

* Échantillon de sérum basal à jeun et administration de Synacthène (ACTH) : Specimen.collection.collected[collectedDateTime], un second échantillon est prélevé 60 minutes plus tard : Specimen.collection.collected[collectedDateTime]

### Cas d'utilisation 9: Informations complémentaires sur le contexte de l'échantillon

Pour les analyses des gaz du sang, la quantité d'oxygène administrée au patient est un sujet de préoccupation.

* ServiceRequest.reasonReference (Condition | Observation | DiagnosticReport)
* ServiceRequest.supportingInfo, par exemple O2 4 litres/min.
