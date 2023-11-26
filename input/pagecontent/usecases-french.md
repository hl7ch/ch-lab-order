<!-- markdownlint-disable MD001 MD033 MD041 -->

<!--
╭───────────────────── UC -german ──────────────────────────╮
│  UC - english is original, this is a traduction           │
╰───────────────────────────────────────────────────────────╯
-->

### Cas d'utilisation 1: Résultats des Tests au sens classique du terme

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

Exemple de formulaire pour l'hématologie, la coagulation et la chimie clinique : [1-tvt](http://fhir.ch/ig/ch-lab-order/Questionnaire-1-tvt-by-form.html).
Exemple de formulaire pour la microbiologie, l'hématologie et la chimie clinique : [2-pertussis](http://fhir.ch/ig/ch-lab-order/Questionnaire-2-pertussis.html).

### Cas d'utilisation 2: Prescription de laboratoire sans utilisation de Questionnaire et QuestionnaireResponse

Dans le cas de la prescription de laboratoire interne (prescription à partir du SIH vers le système de laboratoire au sein du même hôpital), les systèmes de prescription de laboratoire propres avec CDS connecté jouent un rôle essentiel, de sorte qu'il doit être possible de représenter les prescriptions de laboratoire sans questionnaire. Afin de pouvoir prescrire plusieurs analyses pour le même échantillon, plusieurs demandes de service doivent pouvoir être représentées au moyen de 'Request Pattern'.
Exemple de formulaire sans Q/QR

### Cas d'utilisation 3: Demande d'analyses supplémentaires du même échantillon

Il n'est pas rare que les résultats d'examens de laboratoire conduisent à demander d'autres tests sur le même échantillon. Ainsi, dans l'exemple 1-tvt, une thrombophilie veineuse peut être suspectée, de sorte que d'autres examens de laboratoire peuvent trouver des causes héréditaires telles que la mutation du facteur V de Leiden, la mutation du gène de la prothrombine, le déficit en antithrombine, etc.

* Informations sur le service demandé
* Dans le ValueSet Servicerequest.category, RequestForAdditionalExam est sélectionné.

### Cas d'utilisation 4: Demande de résultats de laboratoire et d'images existants

Parfois, le médecin souhaite également obtenir des informations sur des examens de laboratoire antérieurs, par exemple pour évaluer l'évolution de l'antigène spécifique de la prostate (PSA).

* Données relatives au service demandé
* La catégorie Servicerequest.category est RequestForPrecedentReport ou RequestForPrecedentReportAndImages.

Exemple de formulaire avec ServiceRequestCategory RequestForPrecedentReport

### Cas d'utilisation 5: Ordre de collecte pour les analyses toxicologiques (surveillance biologique)

Ce cas d'utilisation correspond à l'exemple 5-biol-monit. Pour évaluer l'exposition des travailleurs aux substances chimiques, des mesures sur le lieu de travail sont complétées par des examens préventifs de la médecine du travail. Il est possible de déterminer les agents toxiques eux-mêmes ou leurs métabolites dans le sérum ou l'urine. La demande est lancée par le médecin du travail de l'entreprise ou de l'assurance. Il faut garder à l'esprit la problématique des fluctuations du personnel.

En voici quelques exemples :

* Médecine du travail : commande d'analyses de laboratoire pour un groupe d'ouvriers.
* ServiceRequest.subject fait référence à un groupe
* ServiceRequest.specimen fait référence à plusieurs échantillons (0 .. *)
* Industrie alimentaire : enquête sur l'hygiène des employés (p.ex. contamination par salmonelles)
* Enquêtes de police

Exemple de formulaire : [5-biol-monit](http://fhir.ch/ig/ch-lab-order/Questionnaire-5-biol-monit.html). Des listes de travail sont traitées, qui s'étendent sur une longue période (jours/semaines). En règle générale, certains examens sont demandés pour plusieurs patients.

### Cas d'utilisation 6: Proposition d'examens supplémentaires ou alternatifs par le médecin de laboratoire (destinataire de la commande, receiver)

Après réception et traitement du mandat de laboratoire, il peut arriver que le médecin de laboratoire souhaite proposer à l'auteur du mandat des examens supplémentaires ou alternatifs. Pour ce faire, il peut utiliser le document de commande reçu, échanger par son système d'information les données personnelles de l'émetteur et du récepteur, et le renvoyer avec les propositions d'examens de laboratoire supplémentaires ou alternatifs.

* ServiceRequest.category : ProposalForAdditionalExam

Exemple de formulaire pour la microbiologie, l'hématologie et la chimie clinique : [2-pertussis](http://fhir.ch/ig/ch-lab-order/Questionnaire-2-pertussis.html).
Exemple de formulaire avec proposition d'examens complémentaires en réponse

### Cas d'utilisation 7: Problématique, résultats et autres données sur l'état de santé du patient

La question posée est particulièrement intéressante pour la demande du laboratoire. Le ServiceRequest.reasonCode met à disposition le champ nécessaire à cet effet. Le motif de la demande (ReasonCode) peut être codé, par exemple sous la forme d'une procédure SNOMED-CT ; un texte libre pur est également possible, par exemple 'Examen d'une pneumonie adypique'.  Si cela présente un intérêt particulier pour l'interprétation de l'examen prescrit, d'autres données relatives à l'état de santé du patient peuvent être incluses dans la demande de laboratoire, telles que les résultats existants, les rapports médicaux et les documents.

* ServiceRequest.reasonCode ServiceRequest.reasonCode.text

Exemple de formulaire pour la microbiologie avec question [4-sepsis](http://fhir.ch/ig/ch-lab-order/Questionnaire-4-sepsis.html).

### Cas d'utilisation 8: Indications sur l'échantillon, préanalytique

Il existe des indications obligatoires ou souhaitées pour l'établissement complet de la demande ou pour l'interprétation des résultats, car pour certaines analyses, la demande et l'échantillon ne suffisent pas à eux seuls pour déterminer le résultat du laboratoire. Dans de tels cas, des observations relatives au prélèvement d'échantillons doivent être fournies au laboratoire. Citons par exemple la détermination de la clairance de la créatinine dans l'urine de 24 heures. Pour cela, le laboratoire doit connaître la quantité d'urine collectée pendant une période donnée. Pour ce faire, le donneur d'ordre transmet au laboratoire le volume d'urine ainsi qu'un échantillon d'urine et de sérum.

* Quantité d'urine collectée : Specimen.collection.quantity.

* Début et fin de la collecte d'urine : Specimen.collection.collected[collectedPeriod] - start - end

Un autre exemple est le test de fonction Synacthène(ACTH), dans lequel un échantillon de sang basal est prélevé le matin à jeun, puis le Synacthène est immédiatement injecté, et un deuxième échantillon de sang est prélevé une heure plus tard.

* Échantillon de sérum de base à jeun et administration de Synacthé : Specimen.collection.collected[collectedDateTime]

* Deuxième échantillon de sérum 60 minutes plus tard : Specimen.collection.collected[collectedDateTime].

Ou bien des indications supplémentaires sur le contexte de l'échantillon sont souhaitées pour une interprétation ultérieure des résultats, comme par ex.
pour les analyses de gaz du sang, où la quantité d'oxygène administrée au patient au moment du prélèvement doit être connue.

* ServiceRequest.supportingInfo, p.ex. O2 4 litres/min.

### Cas d'utilisation 9: Demander des examens de monitorage (non recommandé)

Les laboratoires offrent souvent la possibilité de surveiller les fonctions vitales à l'aide d'appareils médicaux appropriés, comme par exemple la surveillance de la tension artérielle 24 heures sur 24, la surveillance à long terme de l'ECG ou la surveillance médicale du sommeil. Pour ce faire, l'appareil médical est soit envoyé au prescripteur, soit le patient vient le chercher lui-même au laboratoire. On a essayé de représenter ces prescriptions par les ServiceRequest.catogories :

* La démarche consistant à inclure ce cas d'utilisation dans le présent guide d'implémentation semble toutefois insatisfaisante, car de tels examens de surveillance des données vitales sortent du domaine du laboratoire proprement dit et parce que FHIR met à notre disposition des ressources plus spécifiques : La ressource [Device Request](https://hl7.org/fhir/R4B/devicerequest.html#DeviceRequest) s'impose ici, l'appareil nécessaire étant référencé dans la ressource [DeviceDefinition](https://hl7.org/fhir/R4B/devicedefinition.html). Le cas d'utilisation correspondant peut être implémenté de manière analogue à la prescription de laboratoire sous forme de bundle avec une composition qui contient la [Device Request](https://hl7.org/fhir/R4B/devicerequest.html#DeviceRequest) à la place de la demande de service. Il est donc plus judicieux de traiter la demande d'examens de surveillance dans un guide d'implémentation séparé.
En raison des considérations ci-dessus, les ServiceRequestCategories correspondantes pour le monitoring ont été commentées dans le ValueSet du guide d'implémentation.

### Cas d'utilisation 10: Ordonnance de laboratoire du catalogue de laboratoire

Ce cas d'utilisation n'entre pas dans le cadre de ce guide d'implémentation, bien qu'il constitue un élément essentiel de toute ordonnance de laboratoire. Les donneurs d'ordre ont besoin d'une sélection d'examens de laboratoire que le laboratoire peut réellement mettre à disposition. En outre, ils ont besoin d'être guidés dans la multitude d'examens possibles dans les différents domaines, ainsi que de directives pour la procédure préanalytique, de directives pour les récipients et les moyens de transport appropriés, pour les volumes minimaux des échantillons, etc. Une version future devrait offrir cette possibilité.

Les laboratoires mettent à la disposition de leurs clients un catalogue des examens de laboratoire qu'ils peuvent mettre à disposition. Il peut s'agir d'examens individuels, comme la concentration de sodium dans le sérum, ou d'une collection d'examens, comme Na, K et Cl dans le sérum. Souvent sous la forme d'un manuel de laboratoire, ils rendent accessibles les consignes concernant la température de transport, la quantité minimale d'échantillons, le type de récipient de transport, etc.

Il y aura différents types d'entrées dans le catalogue (CatalogEntries) : Analyses individuelles, analyses multiples (panels), récipients d'échantillons, conditions préalables pré-analytiques.
L'enregistrement individuel d'une analyse de laboratoire ou d'un échantillon peut être représenté au moyen de la ressource CatalogEntry. Une composition avec un Profile for Catalog est alors le document qui représente le catalogue et représente l'ensemble des CatalogEntries qu'il contient. Il est important que le Catalog corresponde toujours aux conditions actuelles du laboratoire et qu'il puisse par exemple intégrer immédiatement de nouveaux examens de laboratoire ou des prescriptions modifiées de la préanalytique.
[StructureDefinition:Catalog](http://hl7.org/fhir/catalog.html)
