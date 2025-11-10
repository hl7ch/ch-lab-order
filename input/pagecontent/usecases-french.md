<!-- markdownlint-disable MD001 MD033 MD041 -->
<!--
╭───────────────────── UC-french  ──────────────────────────╮
│  UC-english is original, german and french are dependent  │
╰───────────────────────────────────────────────────────────╯
-->
### Cas d'application 1: Générer un document d'ordre de laboratoire

{% include img.html img="LabOrderWorkflow.svg" caption="Fig. 1: Commande de laboratoire et flux de travail des tests" width="60%" %}

#### Document de commande de laboratoire avec demande de service

Le client (par exemple un médecin) a besoin de divers tests de laboratoire pour compléter le processus de diagnostic. Il crée un document de commande dans son système de dossiers médicaux électroniques (DME), qui contient les données administratives structurées conformément au guide de mise en œuvre du CH Core et dont le contenu est disponible dans le DME. Parmi les analyses fournies par le SIL, il peut sélectionner celles qui l'aident à répondre à sa question, et il peut également déterminer les échantillons correspondant aux analyses. Par exemple, il veut faire analyser le glucose dans le sang et le liquide céphalo-rachidien. Le système de laboratoire peut stocker les informations sur les récipients d'échantillons requis et les additifs éventuels dans le système. Les conditions pré-analytiques sont spécifiées.

Il peut de plus ajouter des informations sur le contexte clinique à la commande du laboratoire : liste des problèmes, liste des médicaments en cours, questions sur les analyses prescrites.

Le document de commande est envoyé au système d'information du laboratoire (LIS).

Exemple de document de commande par ServiceRequest: [CH LAB-Order 0-best-practice](Bundle-0-best-practice-document-with-sr.html)

#### Document de commande de laboratoire avec demande de service et formulaire

Le client (par exemple, le médecin) a besoin de divers tests de laboratoire pour un diagnostic plus approfondi. À cette fin, il crée un document de commande dans le système d'information de son cabinet, avec les informations nécessaires sur le patient, le test de laboratoire, les échantillons, etc. Les échantillons nécessaires (sérum, urine, liquide céphalorachidien, etc.) sont stockés dans les documents de commande correspondants. Les échantillons nécessaires (sérum, urine, liquide céphalorachidien) sont collectés dans des récipients appropriés et clairement affectés au document de commande (Specimen.identifier, Specimen.container.identifier). Les échantillons peuvent être examinés dans le propre laboratoire ou doivent être envoyés par courrier ou par service de messagerie au laboratoire externe. Là, le système d'information du laboratoire leur attribue leur propre identifiant (Specimen.accessionIdentifier).

Un formulaire (Questionnaire) est présenté au client, qui contient les informations suivantes :

* Métadonnées de la commande
* Informations sur la commande
* Informations sur le destinataire de la commande (receiver)
* Informations sur le patient
* Informations sur le donneur d'ordre (expéditeur)
* Informations sur les destinataires éventuels d'une copie des résultats (receiverCopies)
* Informations sur la spécialité du laboratoire
* Informations sur les examens demandés

* Informations sur le matériau de l'échantillon, Spécimen
  * Type : par exemple, sérum, sang total, liquide céphalo-rachidien
  * Sujet : référence au patient
  * Prélèvement : informations sur le prélèvement, l'heure du prélèvement, la quantité, la méthode, le site de prélèvement (par exemple, bras droit), la période de jeûne.
  * Conteneur, récipient : identifiant, type
  * et autres informations

* Informations sur le service demandé
  Information sur le service demandé : * service request.category is RequestForLabExam
  * Question, raison de l'investigation (ServiceRequest.reasonCode, ServiceRequest.reasonReference)
  * payeur (assurance maladie, assurance accident, etc.)
  * et plus encore.

Exemple de document de commande par formulaire: [CH LAB-Order 1-tvt by Form](Bundle-1-tvt-document-with-sr-and-form.html)

### Cas d'application 2: Demande de tests supplémentaires sur le même échantillon

Il n'est pas rare que les résultats des tests de laboratoire conduisent à demander des tests supplémentaires sur le même échantillon. Ou bien les analyses de laboratoire internes sont complétées par d'autres tests qui ne peuvent être effectués que dans un laboratoire externe.

Dans l'exemple 2-pertussis, les analyses de laboratoire internes (numération sanguine automatisée, CRP) sont complétées par une recherche d'ADN de Bordetella pertussis et parapertussis dans le prélèvement de gorge, effectuée par un laboratoire contractuel externe, afin d'exclure la coqueluche.

Lorsque le système de placement demande des tests supplémentaires pour les échantillons existants, il copie la demande de service originale, ajoute les tests de laboratoire requis et un code de commande 'RP', qui signifie une demande de remplacement d'une commande ou d'un service. Une règle invariante spéciale "sr-1" garantit la création d'une référence à la demande de service originale.

Les codes de commande peuvent par ailleurs être utilisés pour annuler, mettre en attente ou libérer des demandes de commande mises en attente. Dans ce cas, la référence à l'ordre original doit être créée.

* La demande de 2-pertussis-ServiceRequest est remplacée par la demande de service
* 2-pertussis-ServiceRequestAddTest, qui demande l'examen du prélèvement de gorge à la recherche de l'ADN de la coqueluche ou de la para-coqueluche.

Exemple de demande de service référencée : [CH LAB-Order 2-pertussis](ServiceRequest-2-pertussis-ServiceRequest.html), le code de l'élément 'orderDetail' serait 'NW' pour "New order/service", ou l'élément pourrait être complètement omis.

Exemple de demande de remplacement de service : [CH LAB-Order 2-pertussis additional test](ServiceRequest-2-pertussis-ServiceRequestAddTest.html)
La demande de remplacement contient une référence à la demande de service précédente et un élément "orderDetail", qui porte le code de contrôle de l'ordre du système de codes v2-0119 : 'RP' pour "Order/service replace request", 'CA' pour "Cancel order/service request", 'HD' pour "Hold order request", et 'RL' pour "Release previous hold"

### Cas d'application 3: Demande collective d'essais toxicologiques (surveillance biologique)

Ce cas d'application correspond à l'exemple 5-biol-monit. Afin d'évaluer l'exposition des travailleurs aux substances chimiques, les mesures sur le lieu de travail sont complétées par des examens de santé au travail. Les substances toxiques elles-mêmes ou leurs métabolites dans le sérum ou l'urine peuvent être déterminés. La demande est initiée par le médecin du travail de l'entreprise ou de la compagnie d'assurance. Le problème des fluctuations des employés doit être pris en compte.

Voici quelques exemples :

* Médecine du travail : demande d'analyses de laboratoire pour un groupe de travailleurs
  * ServiceRequest.subject se réfère à un groupe
  * ServiceRequest.specimen se réfère à plusieurs échantillons (0 .. *)
* Industrie alimentaire : enquête sur l'hygiène des employés (par exemple, contamination par la salmonelle)
* Enquêtes de police

Les listes de travail sont traitées sur une période plus longue (jours/semaines). En général, des examens spécifiques sont demandés pour plusieurs patients.

Exemple de document de commande avec ServiceRequest : [CH LAB-Order 5-biol-monit](Bundle-5-biol-monit-document-with-sr.html).

Exemple de document de commande avec ServiceRequest et Formulaire: [CH LAB-Order 5-biol-monit-form](Bundle-5-biol-monit-document-with-sr-and-form.html).

