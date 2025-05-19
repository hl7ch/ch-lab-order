/*
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
*/
/*
Profile: LabServiceDefinition
Parent: LabServiceDefinition           // is a PlanDefinition from the Order Catalog IG
Id: ch-lab-labservice-definition
Title: "CH LAB-order Laboratory Service Definition"
Description: """The LabServiceDefinition profile constrains the LabServiceDefinition resource to represent a laboratory diagnostic service for
the clinicians using such services. Clinicians typically order laboratory services and use the results thereof in the course of their delivery of clinical
care. A laboratory diagnostic service is a kind of clinical artifact that falls within the scope of PlanDefinition. It involves preparation of the patient,
collection and delivery to the lab of biological/digital specimens , tests and panels performed on these specimens, interpretation of the results by the
pathologist, and delivery of the results and diagnostic report back to the ordering clinician and possibly other recipients, including the patient. 
PlanDefinition conveys the general properties of the lab service. It describes the usage of the service, the contexts and situations in which this service 
is useful, and may also detail the goals that the laboratory service contributes to, such as screening or diagnostic of a particular pathology, monitoring
of a long course treatment ... 
An instance of PlanDefintion, thus, represents a laboratory service. It references one or more instances of ActivityDefinition, describing the service in 
terms of laboratory procedures, with their input and output observations. The PlanDefinition also references the instances of SpecimenDefinition 
representing the kinds of specimens needed to perform the service. A service may be a panel or super-panel grouping other laboratory services that may 
also be ordered independently. In that case, the PlanDefinition of the encompassing service references the PlanDefinition resources representing the 
included services (relatedArtifact, type composed-of).  Reflex tests are represented as sub-actions grouped in a logical group with behavior any, meaning
that any number of members of the group may be performed. Each sub-action is associated with a trigger conveying the named event, which reflexes it. 
A definition of a laboratory diagnostic service conforming to this profile can be used in a laboratory compendium/catalog as well as in other contexts. 
A laboratory service is fulfilled through the execution of one or more laboratory procedures. The logical combinations of these procedures may be 
conjunctions (execute each of them) or disjunctions (execute at most one of them), or a mixture of both logical structures. The closest resource that 
may represent a service as a set of activities logically combined with this flexibility is PlanDefinition. PlanDefinition is therefore selected to 
represent a laboratory service, and the laboratory procedures needed to achieve this service are represented by instances of ActivityDefinition referenced
by PlanDefinition, from logical groups defined in PlanDefinition."""

* ^version = "current"
* ^status = #draft
* ^publisher = "HL7 Switzerland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.ch"
* ^jurisdiction = urn:iso:std:iso:3166#CH

* . ^short = "The definition of a plan for a series of actions"
* . ^comment = "The LChLabLabServiceDefinition profile constrains the resource LabServiceDefinition to represent a laboratory diagnostic service made
                visible to clinicians: the potential consumers of this service."

* type MS
* useContext contains
    Orderable 0..1 MS and
    PathologistInitiative 0..1 and
    OneGender 0..1 and
    StoreSpecimen 0..1 and
    AgeRange 0..*

*/