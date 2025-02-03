Alias: $m49.htm = http://unstats.un.org/unsd/methods/m49/m49.htm
Alias: $usage-context-type = http://terminology.hl7.org/CodeSystem/usage-context-type
Alias: $v3-ActCode = http://terminology.hl7.org/CodeSystem/v3-ActCode
Alias: $CatalogReference = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/CatalogReference
Alias: $ServiceBillingCode = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ServiceBillingCode
Alias: $BillingSummary = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/BillingSummary
Alias: $ScheduleSummary = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ScheduleSummary
Alias: $LimitationSummary = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LimitationSummary
Alias: $RegulatorySummary = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/RegulatorySummary
Alias: $ResultInterpretationSummary = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/ResultInterpretationSummary
Alias: $SpecimenRequested = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/SpecimenRequested
Alias: $LabProcedureDefinition = http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition
Alias: $laboratory-service-type = http://hl7.org/fhir/uv/order-catalog/ValueSet/laboratory-service-type
// Alias: $administrative-gender = http://hl7.org/fhir/ValueSet/administrative-gender
Alias: $bibliography-artifact-type = http://hl7.org/fhir/uv/order-catalog/ValueSet/bibliography-artifact-type

Profile: ChLab_LabServiceDefinition
Parent: LabServiceDefinition           // is a PlanDefinition
Id: ch-lab-labservice-definition
Title: "CH LAB-order Laboratory Service Definition"
Description: """The ChLab_LabServiceDefinition profile constrains the LabServiceDefinition resource to represent a laboratory diagnostic service for the clinicians using such services. Clinicians typically order laboratory services and use the results thereof in the course of their delivery of clinical care. 

A laboratory diagnostic service is a kind of clinical artifact that falls within the scope of PlanDefinition. It involves preparation of the patient, collection and delivery to the lab of biological/digital specimens , tests and panels performed on these specimens, interpretation of the results by the pathologist, and delivery of the results and diagnostic report back to the ordering clinician and possibly other recipients, including the patient. PlanDefinition conveys the general properties of the lab service. It describes the usage of the service, the contexts and situations in which this service is useful, and may also detail the goals that the laboratory service contributes to, such as screening or diagnostic of a particular pathology, monitoring of a long course treatment ... 

 An instance of PlanDefintion, thus, represents a laboratory service. It references one or more instances of ActivityDefinition, describing the service in terms of laboratory procedures, with their input and output observations. The PlanDefinition also references the instances of SpecimenDefinition representing the kinds of specimens needed to perform the service. 

 A service may be a panel or super-panel grouping other laboratory services that may also be ordered independently. In that case, the PlanDefinition of the encompassing service references the PlanDefinition resources representing the included services (relatedArtifact, type composed-of). 

 Reflex tests are represented as sub-actions grouped in a logical group with behavior any, meaning that any number of members of the group may be performed. Each sub-action is associated with a trigger conveying the named event, which reflexes it. 

A definition of a laboratory diagnostic service conforming to this profile can be used in a laboratory compendium/catalog as well as in other contexts. 

A laboratory service is fulfilled through the execution of one or more laboratory procedures. The logical combinations of these procedures may be conjunctions (execute each of them) or disjunctions (execute at most one of them), or a mixture of both logical structures. The closest resource that may represent a service as a set of activities logically combined with this flexibility is PlanDefinition.
PlanDefinition is therefore selected to represent a laboratory service, and the laboratory procedures needed to achieve this service are represented by instances of ActivityDefinition referenced by PlanDefinition, from logical groups defined in PlanDefinition."""
* ^version = "current"
* ^status = #draft
* ^publisher = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = urn:iso:std:iso:3166#CH

* . ^short = "The definition of a plan for a series of actions"
* . ^comment = "The LChLabLabServiceDefinition profile constrains the resource LabServiceDefinition to represent a laboratory diagnostic service made visible to clinicians: the potential consumers of this service."
// * extension ^slicing.discriminator[0].type = #value
// * extension ^slicing.discriminator[=].path = "url"
// * extension ^slicing.rules = #open
// * extension contains
//     $CatalogReference named CatalogReference 0..* and
//     $ServiceBillingCode named ServiceBillingCode 0..* and
//     $BillingSummary named BillingSummary 0..1 and
//     $ScheduleSummary named ScheduleSummary 0..1 and
//     $LimitationSummary named LimitationSummary 0..1 and
//     $RegulatorySummary named RegulatorySummary 0..1 and
//     $ResultInterpretationSummary named ResultInterpretationSummary 0..1
// * extension[CatalogReference] ^short = "Reference to a catalog exposing this service"
// * extension[ServiceBillingCode] ^short = "A billing code associated with the service"
// * extension[BillingSummary] ^short = "Textual summary of billing applied to the service"
// * extension[ScheduleSummary] ^short = "Textual summary of the schedule of the service"
// * extension[LimitationSummary] ^short = "Textual summary  of limitations associated with the service"
// * extension[RegulatorySummary] ^short = "Textual summary of regulations applicable to this service"
// * extension[ResultInterpretationSummary] ^short = "markdown summary of result interpretation guidance for this service"
// * title.extension ^slicing.discriminator[0].type = #value
// * title.extension ^slicing.discriminator[=].path = "url"
// * title.extension ^slicing.rules = #open
// * title.extension contains Translation named OtherTitle 0..*
// * title.extension[OtherTitle] ^short = "Synonym in a specified language"
// * title.extension[OtherTitle] ^definition = "Expresses a synonym of the laboratory service in a specified language"
// * type MS
// * type from $laboratory-service-type (extensible)
// * type ^short = "panel | test"
// * type ^comment = "In this LabServiceDefiniton profile, PlanDefinition represents a laboratory service, which can be either a test or a panel. \r\nA test is a single measurement performed on a material/digital specimen, producing generally one result (sometimes zero, sometime more).\r\nA panel is a collection of tests and panels, performed on one or more material/digital specimens, and producing a collection of results.\r\nTherefore, the type is bound to a value set {\"test\", \"panel\"}. The original value bound to this element with binding strength \"extensible\" does not contain appropriate values for laboratory diagnostic services."
// * description ^comment = "This description provides details such as when this laboratory diagnostic service can be ordered, comments about misuse, instructions for clinical use and interpretation, literature references, examples from the paper world, etc. It is not a rendering of the plan definition as conveyed in the 'text' field of the resource itself. This item SHOULD be populated unless the information is available from context (e.g. the language of the plan definition is presumed to be the predominant language in the place the plan definition was created)."
// * description.extension ^slicing.discriminator[0].type = #value
// * description.extension ^slicing.discriminator[=].path = "url"
// * description.extension ^slicing.rules = #open
// * description.extension contains Translation named OtherDescription 0..*
// * description.extension[OtherDescription] ^short = "Translation in a specified language"
// * description.extension[OtherDescription] ^definition = "Translation of the description of the laboratory service in a specified language"
// * useContext MS
// * useContext ^slicing.discriminator[0].type = #pattern
// * useContext ^slicing.discriminator[=].path = "code"
// * useContext ^slicing.discriminator[+].type = #type
// * useContext ^slicing.discriminator[=].path = "value"
// * useContext ^slicing.discriminator[+].type = #pattern
// * useContext ^slicing.discriminator[=].path = "value"
// * useContext ^slicing.rules = #open
// * useContext ^comment = "When multiple useContexts are specified, in this LabServiceDefinition profile, all contexts apply to the defined laboratory service."
// * useContext contains
//     Orderable 0..1 MS and
//     PathologistInitiative 0..1 and
//     OneGender 0..1 and
//     StoreSpecimen 0..1 and
//     AgeRange 0..*
// * useContext[Orderable] ^label = "orderable"
// * useContext[Orderable] ^short = "Service is orderable"
// * useContext[Orderable] ^definition = "The presence of this slice indicates that the service is open to laboratory order entry"
// * useContext[Orderable].code = $usage-context-type#task
// * useContext[Orderable].value[x] only CodeableConcept
// * useContext[Orderable].value[x] = $v3-ActCode#LABOE
// * useContext[PathologistInitiative] ^label = "pathologist"
// * useContext[PathologistInitiative] ^short = "Service may be added by pathologist"
// * useContext[PathologistInitiative] ^definition = "The presence of this slice indicates that the service may be added to an existing order by the pathologist after review of the preliminary results of this order"
// * useContext[PathologistInitiative].code = $usage-context-type#task
// * useContext[PathologistInitiative].value[x] only CodeableConcept
// * useContext[PathologistInitiative].value[x] = $v3-ActCode#LABRREV
// * useContext[OneGender] ^short = "service restricted to one gender"
// * useContext[OneGender] ^definition = "The presence of this slice indicates that the service is restricted to one gender of subject (female or male)"
// * useContext[OneGender].code = $usage-context-type#gender
// * useContext[OneGender].value[x] only CodeableConcept
// * useContext[OneGender].value[x] from $administrative-gender (required)
// * useContext[StoreSpecimen] ^short = "Specimens to be kept"
// * useContext[StoreSpecimen] ^definition = "The presence of this slice indicates that the specimens used to perform this service will be kept in long-time storage and available for re-testing in the future"
// * useContext[StoreSpecimen].code = $usage-context-type#task
// * useContext[StoreSpecimen].value[x] only CodeableConcept
// * useContext[StoreSpecimen].value[x] = $v3-ActCode#STORE
// * useContext[AgeRange] ^short = "A patient age range applicable for this service"
// * useContext[AgeRange].code = $usage-context-type#age
// * useContext[AgeRange].value[x] only Range
// * useContext[AgeRange].value[x] ^short = "patient age range applicable for this service"
// * usage MS
// * usage ^short = "Describes the clinical usage of the laboratory diagnostic service"
// * usage ^definition = "A detailed description of how the laboratory diagnostic service is used from a clinical perspective."
// * topic MS
// * topic ^short = "categorization of the laboratory service"
// * topic ^definition = "Descriptive topics related to the content of the laboratory service definition. Topics provide a high-level categorization of the definition that can be useful for filtering and searching. Some possible axes of categorization include laboratory specialty, kind of pathology, kind of biologic specimen tested, ..."
// * topic ^comment = "Topics are usually chosen by the laboratory or the organization owning the catalog"
// * relatedArtifact MS
// * relatedArtifact ^slicing.discriminator[0].type = #value
// * relatedArtifact ^slicing.discriminator[=].path = "type"
// * relatedArtifact ^slicing.description = "A laboratory service definition may have related artifacts of three kinds:\r\n1- documents expected from the ordering party when ordering this laboratory service. This kind is represented by the slice InputExpected, which is the only slice defined for this element. Example: Patient consent for genetic testing.\r\n2- any kind of bibliography, justification, documentation.\r\n3- replacement of the no longer usable current service, by another one."
// * relatedArtifact ^slicing.rules = #open
// * relatedArtifact contains
//     InputDocumentExpected 0..* and
//     IsReplacedBy 0..* and
//     Includes 0..* and
//     Bibliography 0..*
// * relatedArtifact[InputDocumentExpected] ^short = "Input document expected by the laboratory service"
// * relatedArtifact[InputDocumentExpected] ^definition = "Document that needs to be provided alongside the order for the laboratory service"
// * relatedArtifact[InputDocumentExpected] ^comment = "Examples of documents that should accompany an order for this service include patient consent for genetic testing, patient agreement for payment of a non-reimbursable service, insurance formal acceptation of a specific test (e.g. prenatal karyotyping) ..."
// * relatedArtifact[InputDocumentExpected].type = #depends-on (exactly)
// * relatedArtifact[InputDocumentExpected].label 1..
// * relatedArtifact[InputDocumentExpected].label ^label = "Kind of document"
// * relatedArtifact[InputDocumentExpected].label ^short = "Name of the kind of document expected"
// * relatedArtifact[InputDocumentExpected].label ^definition = "Various kinds (or models) of documents may be expected as input to a laboratory service. This element provides an unambiguous short name for such a kind of document."
// * relatedArtifact[InputDocumentExpected].label ^comment = "Examples of kinds of documents expected include:\r\n- the paper lab order scanned\r\n- the statement of acceptation of the service by the insurance provider (e.g. for a prenatal karyotyping)\r\n- the patient consent (e.g. for a genetic test)\r\n- the patient insurance affiliation scanned"
// * relatedArtifact[InputDocumentExpected].display 1..
// * relatedArtifact[InputDocumentExpected].display ^definition = "A brief description of the document that need to be provided alongside the order of this laboratory service"
// * relatedArtifact[InputDocumentExpected].document ^short = "Document model"
// * relatedArtifact[InputDocumentExpected].document ^definition = "provides in the attachment a model for the kind of document expected"
// * relatedArtifact[InputDocumentExpected].document ^comment = "The model can be encoded in base64 in the data sub-element, with its mime type encoded in the contentType sub-element, or it can be external, accessible through the url sub-element."
// * relatedArtifact[InputDocumentExpected].document.url ^short = "url of the model of document expected"
// * relatedArtifact[InputDocumentExpected].document.url ^definition = "used if the model of document is accessible externally"
// * relatedArtifact[InputDocumentExpected].document.title ^short = "Title of the kind or model of document"
// * relatedArtifact[InputDocumentExpected].document.title ^definition = "May be sufficient to specify the document expected, in cases where no pre-defined needs to be communicated to the orderer of the service."
// * relatedArtifact[IsReplacedBy] ^short = "Reference to a service replacing the current non-usable one"
// * relatedArtifact[IsReplacedBy] ^definition = "The related artifact is another instance of PlanDefinition, which is a replacement for the current no longer usable laboratory service"
// * relatedArtifact[IsReplacedBy].type = #successor (exactly)
// * relatedArtifact[IsReplacedBy].type ^definition = "The type of relationship to the related artifact is successor, meaning that the related artifact is in this case another instance of PlanDefinition representing the laboratory service, which is substituted to the current instance."
// * relatedArtifact[IsReplacedBy].resource 1..
// * relatedArtifact[IsReplacedBy].resource only Canonical(LabServiceDefinition)
// * relatedArtifact[IsReplacedBy].resource ^definition = "The related resource, in this case a PlanDefinition constrained by the LabServiceDefinition profile"
// * relatedArtifact[Includes] ^short = "Reference to a panel or test included by the current one"
// * relatedArtifact[Includes] ^definition = "The related artifact is another instance of PlanDefinition, representing a laboratory service orderable on its own, and which is also part of the current one, either systematically or reflexed by a trigger."
// * relatedArtifact[Includes].type = #composed-of (exactly)
// * relatedArtifact[Includes].type ^definition = "The type of relationship to the related artifact is composed-of, meaning that the related artifact is another standalone laboratory service, which is also included as a sub-service of the current one."
// * relatedArtifact[Includes].resource 1..
// * relatedArtifact[Includes].resource only Canonical(LabServiceDefinition)
// * relatedArtifact[Includes].resource ^definition = "The related resource, in this case a PlanDefinition constrained by the LabServiceDefinition profile"
// * relatedArtifact[Bibliography] ^short = "Additional documentation, citation or justification"
// * relatedArtifact[Bibliography] ^definition = "Related bibliographic references such as documentation, justification, or citation."
// * relatedArtifact[Bibliography].type from $bibliography-artifact-type (required)
// * relatedArtifact[Bibliography].type ^short = "documentation | justification | citation"
// * relatedArtifact[Bibliography].type ^definition = "kind of associated bibliographic artifact"
// * action 1..1
// * action ^definition = "The concrete action or group of actions conveyed by this laboratory diagnostic service"
// * action ^comment = "The LabServiceDefinition profile constrains the content of PlanDefinition to be a single action at the top level. This action may be implemented by a single laboratory procedure referenced as an instance of ActivityDefinition, or may be decomposed into any level of logical groups of more granular actions, each leaf action referencing an ActivityDefinition."
// * action.extension ^slicing.discriminator[0].type = #value
// * action.extension ^slicing.discriminator[=].path = "url"
// * action.extension ^slicing.rules = #open
// * action.extension contains $SpecimenRequested named SpecimenRequested 0..*
// * action.extension[SpecimenRequested] ^short = "Specimens required for this action"
// * action.extension[SpecimenRequested] ^definition = "A set of specimens requested as input by this laboratory service. The set is organized as a collection of one or more alternative groups (exactly one group should be chosen at specimen collection time). Each group describes one or more specimens that must all be provided, in case this group is the one chosen."
// * action.extension[SpecimenRequested] ^comment = "In case this element has multiple occurrence, all occurrences apply:                        Each set of specimen requirements represented by an occurrence of action.extension:SpecimenRequested must be fulfilled for the service described by the PlanDefinition instance."
// * action.description ^short = "Brief description of the laboratory service and its method"
// * action.description ^definition = "A brief description of the laboratory service, which may mention the analytical method(s) used by the laboratory"
// * action.priority ^definition = "Indicates how quickly this diagnostic panel or test should be performed."
// * action.code ..1 MS
// * action.code ^short = "Code of the laboratory service"
// * action.code ^definition = "A code that provides meaning to the laboratory service"
// * action.code.coding ^slicing.discriminator[0].type = #value
// * action.code.coding ^slicing.discriminator[=].path = "system"
// * action.code.coding ^slicing.ordered = false
// * action.code.coding ^slicing.rules = #open
// * action.code.coding ^short = "Code for the laboratory service"
// * action.code.coding contains orderCodeLOINC 0..1 MS
// * action.code.coding[orderCodeLOINC] ^short = "LOINC code for the laboratory service"
// * action.code.coding[orderCodeLOINC].system = "http://loinc.org" (exactly)
// * action.code.coding[orderCodeLOINC].system MS
// * action.code.coding[orderCodeLOINC].system ^label = "LOINC"
// * action.code.coding[orderCodeLOINC].system ^short = "LOINC code system"
// * action.trigger MS
// * action.trigger ^slicing.discriminator[0].type = #value
// * action.trigger ^slicing.discriminator[=].path = "type"
// * action.trigger ^slicing.description = "Open slicing on trigger with a single slice defined to represent a reflex activity."
// * action.trigger ^slicing.rules = #open
// * action.trigger contains Reflex 0..*
// * action.trigger[Reflex] ^short = "Reflex laboratory procedure"
// * action.trigger[Reflex] ^definition = "This trigger introduces a reflex laboratory procedure (test or panel) represended by the ActivityDefinition referenced by the action.definition. The trigger is expressed as a named event, and may also be refined with a data requirement and a condition."
// * action.trigger[Reflex].type = #named-event (exactly)
// * action.trigger[Reflex].name 1..
// * action.trigger[Reflex].name ^definition = "The natural language expression of the trigger for the reflex laboratory procedure"
// * action.groupingBehavior = #logical-group (exactly)
// * action.definition[x] only Canonical($LabProcedureDefinition)
// * action.definition[x] MS
// * action.definition[x] ^definition = "A reference to an ActivityDefinition that describes the laboratory procedure to be performed, or to a PlanDefinition representing a child laboratory service, either embedded or reflexed by the current one."
// * action.definition[x] ^comment = "The definition is present only when there is no grouping of sub-actions"