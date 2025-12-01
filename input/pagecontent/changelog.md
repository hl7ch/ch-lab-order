Significant changes to this FHIR implementation guide will be documented on this page.

### STU 3 - v3.0.0 (2025-12-15)

#### Fixed / Changed / Updated
* [#385](https://github.com/hl7ch/ch-lab-order/issues/385): A future published Order Catalogue IG is based on R5 and this IG is based on FHIR R4. Decision to remove Catalogue dependency and examples from this IG: Removed ObservationDefinition, PlanDefinition, ActivityDefinition, and Catalog (Composition profile) resources and profiles. Removed Use Case 5 from documentation. (Issues [#322](https://github.com/hl7ch/ch-lab-order/issues/322) and [#359](https://github.com/hl7ch/ch-lab-order/issues/359) are therefore obsolete.)
* [#383](https://github.com/hl7ch/ch-lab-order/issues/383), [#382](https://github.com/hl7ch/ch-lab-order/issues/382), [#378](https://github.com/hl7ch/ch-lab-order/issues/378): Removed Case Study 4 (sepsis) and Use Case 4 from documentation. The reflex testing and Task workflow examples did not align with document-centric approach and are better suited for Clinical Order Workflow (COW) IG patterns. (Issue [#358](https://github.com/hl7ch/ch-lab-order/issues/358) is therefore obsolete.)
* [#368](https://github.com/hl7ch/ch-lab-order/issues/368): Remove triggeredBy artifacts (Extension, Observation, CodeSystem, ValueSet) because the concept belongs to task/order workflow (see above).
* [#384](https://github.com/hl7ch/ch-lab-order/issues/384): Clarified example usage by changing supporting/inline instances from `Usage: #example` to `Usage: #inline`. Standalone example instances (Bundles) remain as `#example`, while supporting resources referenced by examples (Patients, Practitioners, Organizations, Specimens, Conditions, MedicationStatements) are now marked as `#inline` to indicate they are generic FHIR base resource instances used for illustration purposes.
* [#400](https://github.com/hl7ch/ch-lab-order/issues/400): Update terminology with new concepts SCT#312535008 (instead SCT#264231000), LOINC#57782-5 (instead LOINC#24318-8)
* [#366](https://github.com/hl7ch/ch-lab-order/issues/366): Use stable and versioned link to SDC IG
* [#364](https://github.com/hl7ch/ch-lab-order/issues/364): Update link and title from former CH EPR Term to CH Term IG
* [#365](https://github.com/hl7ch/ch-lab-order/issues/365): Unify spelling
* [#401](https://github.com/hl7ch/ch-lab-order/issues/401), [#403](https://github.com/hl7ch/ch-lab-order/issues/403): Cleanup profiles (naming, description, remove unused)
* [#367](https://github.com/hl7ch/ch-lab-order/issues/367): Improve the connection between use cases and case studies
* [#402](https://github.com/hl7ch/ch-lab-order/issues/402): Remove data enterer extension from examples (retired in CH Core)
* [#375](https://github.com/hl7ch/ch-lab-order/issues/375), [#362](https://github.com/hl7ch/ch-lab-order/issues/362), [#373](https://github.com/hl7ch/ch-lab-order/issues/373): Cleanup changelog (sections/ordering, add issue links where available)
* [#386](https://github.com/hl7ch/ch-lab-order/issues/386): ActivityDefinition removed by [#385](https://github.com/hl7ch/ch-lab-order/issues/385)
* [#374](https://github.com/hl7ch/ch-lab-order/issues/374): Added direct links to case study pages (English, German, French) in the home page section
* [#379](https://github.com/hl7ch/ch-lab-order/issues/379): Exception and error workflows (e.g., specimen damaged in transport, test cancellation, order status updates) are out of scope for this current document-centric IG. These workflows will be better addressed in a future version by using the concepts defined by the Clinical Order Workflow (COW) Implementation Guide.
* [#376](https://github.com/hl7ch/ch-lab-order/issues/376): Fixed Bundle.entry:Patient cardinality from 0..* to 1..* in document profiles. Since Composition.subject is 1..1 and must reference a Patient, and the Bundle is declared as type 'document' (meaning all references must be contained within the Bundle), the Patient entry must be present. Updated both ChLabOrderDocumentWithSR and ChLabOrderDocumentWithSR_AndForm profiles.

#### Negative comments and open issues which could not be resolved during the ballot
* [#371](https://github.com/hl7ch/ch-lab-order/issues/371), [#372](https://github.com/hl7ch/ch-lab-order/issues/372), [#377](https://github.com/hl7ch/ch-lab-order/issues/377): Negative comments by EPIC: We understand that an immediate switch to the COW-based lab orders workflow isn’t feasible, but our goal with this feedback is to make sure the ballot includes a path towards making the switch.

### STU 3 Ballot - v3.0.0-ballot (2025-05-22)

#### Changed / Updated 
* In version 2.0.0, the 'basedOn' element in the ServiceRequest resource was pointing in the wrong direction. A sub-ServiceRequest must contain a 'basedOn' element pointing to its parent ServiceRequest. The profiles and examples have been updated to reflect this. 
* The 'code' element in the ServiceRequest has a cardinality of 0..1 and can therefore only contain a single test entry. The data type 'codeableConcept' can have several codes, but only in relation to the same test. This means that different code systems can designate the same test and therefore specify different codes. However, the codeableConcept must not be used as a container for several tests. Each laboratory test must claim a separate ServiceRequest. The examples have been adapted accordingly.
* Use case 5 has been added for illustration purposes. It shows the hierarchical structure of ServiceRequest for the creation of test panels. At the same time, the diagram shows the basics as PlanDefinition, ActivityDefinition, SpecimenDefinition and ObservationDefinition, as they can be stored in a compendium.
* [#296](https://github.com/hl7ch/ch-lab-order/issues/296): The CH LAB-Order 4-sepsis case study has been supplemented with a diagram showing how the workflow for clinical laboratory orders can look. It contains a task resource which describes an activity that can be performed on the specimen, and tracks the state of completion of that activity. It is a representation that an activity should be or has been initiated, and eventually, represents the successful or unsuccessful completion of that activity. Below is an example of a reflexed observation, that means, an observation created without explicit ServiceRequest, as consequence of a precedent observation. 
* Add example for Renal Insufficiency as Panel with PlanDefinition and ActionDefinition
* [#332](https://github.com/hl7ch/ch-lab-order/issues/332): Instance 3-gyn-ServiceRequest: split each lab test into a separate Service Request
* [#329](https://github.com/hl7ch/ch-lab-order/issues/329): ObservationDefinition Hemoglobin blood -> fix erroneous entries

#### Fixed
* [#313](https://github.com/hl7ch/ch-core/issues/313): Add [expansion-parameter](https://build.fhir.org/codesystem-guide-parameter-code.html#:~:text=expansion%2Dparameter,as%20SNOMED%20CT) for the usage of SNOMED CT Swiss Extension. 

#### Open Issues
During the ballot, the following comments came in, which will be taken into account in the further development of CH LAB-Order:

* [#314](https://github.com/hl7ch/ch-lab-order/issues/314): Profile: ChLabOrderMedication -> Parent: Medication, Profile: MedicationStatement -> CHCoreCHCoreMedicationStatement, Profile: ChLabOrderDiagnosisCondition -> Parent: Condition
* [#313](https://github.com/hl7ch/ch-lab-order/issues/313): ch.fhir.ig.ch-lab-order#2.0.0-ballot /terminology.html -- replaced status = #draft with status = #active in all occurrences
* [#312](https://github.com/hl7ch/ch-lab-order/issues/312): Rename ChLabOrderLabSpecialties to ChLabOrderLabStudyTypes, change title to "Laboratory Study Types". Translate all Titles of ValueSets to english.
* [#311](https://github.com/hl7ch/ch-lab-order/issues/311): Removed from Aliases.fsh: $documentEntryClassCode, $documentEntryTypeCode
* [#296](https://github.com/hl7ch/ch-lab-order/issues/296): Add task resource to enable workflow communication
* [#260](https://github.com/hl7ch/ch-lab-order/issues/260): Using Laboratory Catalogue
* [#128](https://github.com/hl7ch/ch-lab-order/issues/128): Mapping reasonCode und reasonReference from Q to SR
* [#127](https://github.com/hl7ch/ch-lab-order/issues/127): Mapping Questionnaire code to Service Request code
* [#72](https://github.com/hl7ch/ch-lab-order/issues/72): Relation between Tests and Specimens my be needed. The relation should be established by a test-specific PlanDefinition as extension specimenRequested, which points to the test-specific SpecimenDefinition. The test-specific PlanDefinition and SpecimenDefinition should be provided by a LabCatalog/Compendium. So the Lab Organization can independently define their tests with all the needed pre-analytic conditions.

See also open issues on [GitHub](https://github.com/hl7ch/ch-lab-order/issues).

### STU 2 - v2.0.0 (2024-12-17)

#### Changed / Updated
* [#284](https://github.com/hl7ch/ch-lab-order/issues/284): Home - IG Fragments (Safety Considerations) - changed
* [#282](https://github.com/hl7ch/ch-lab-order/issues/282): Examples needed that indicate request of analyses and linked information - Example added
* [#281](https://github.com/hl7ch/ch-lab-order/issues/281): Use Cases in German: use case 10 a specialized case of use case 2? - All Use Cases and translations refactored because of making the order using Questionnaire and QuestionnaireResponse as option
* [#280](https://github.com/hl7ch/ch-lab-order/issues/280): FHIR IGs must not have a TODO to be eligible for FMM Level 3 - open TODOs resolved
* [#279](https://github.com/hl7ch/ch-lab-order/issues/279): Use Cases in German: Profile for use case 2? - All Use Cases and translations refactored because of making the order using Questionnaire and QuestionnaireResponse as option
* [#278](https://github.com/hl7ch/ch-lab-order/issues/278): Mismatch between use case 2 in English and in German - All Use Cases and translations refactored because of making the order using Questionnaire and QuestionnaireResponse as option
* [#277](https://github.com/hl7ch/ch-lab-order/issues/277): Management Summary Change - rewording - Management summary text has been modified.
* [#276](https://github.com/hl7ch/ch-lab-order/issues/276): Ordering of Containers, Blood Pressure instruments should not be covered by lab order - Ordering of non laboratory sample measurements is no more part of the IG
* [#275](https://github.com/hl7ch/ch-lab-order/issues/275): Home: Typos - Typos fixed
* [#274](https://github.com/hl7ch/ch-lab-order/issues/274): CH LAB-ORDER Document Profile: Spelling - Spelling is unified
* [#272](https://github.com/hl7ch/ch-lab-order/issues/272): Case Studies in German - Links fixed
* [#253](https://github.com/hl7ch/ch-lab-order/issues/253): Shift license to CC0 1.0 Universal (CC0 1.0) - Switched to CC

#### Follow-up on changes in CH ORF
* [Changelog CH ORF](https://fhir.ch/ig/ch-orf/changelog.html)

#### Follow-up on changes in CH Term
* [#98](https://github.com/hl7ch/ch-term/issues/98): Add NamingSystem for VEKA and GTIN

#### Changed / Updated
* [#132](https://github.com/hl7ch/ch-lab-order/issues/132): Try to build a Questionnaire with a general part and 6 specific parts: [Questionnaire Specification](https://fhir.ch/ig/ch-lab-order/2.0.0/Questionnaire-LabOrder-form.html)
* [#88](https://github.com/hl7ch/ch-lab-order/issues/88): The pre-analytical conditions and any limitations are specified in the laboratory catalogue. These include, for example, the fasting of the patient, the type of sample container, the storage period and temperature of the sample, the reasons for rejection, etc. In addition, the costs of Vitamin D determination are only covered by health insurance in certain situations, e.g. rickets, osteoporosis, etc.
* [#87](https://github.com/hl7ch/ch-lab-order/issues/87): Relations between Specimens and Tests. Refer to issue [#72](https://github.com/hl7ch/ch-lab-order/issues/72)
* [#80](https://github.com/hl7ch/ch-lab-order/issues/80): User should be able to select analyses or analyse panels from a Laboratory Catalog. The applies to Specimens
* [#79](https://github.com/hl7ch/ch-lab-order/issues/79): Pick desired Analyses and Specimens from am Catalog
* [#78](https://github.com/hl7ch/ch-lab-order/issues/78): Test to be performed is missing in ServiceRequest.code
* [#77](https://github.com/hl7ch/ch-lab-order/issues/77): Pathology Order: Case Study and Instance is added: Case study 6: Suspected Melanoma, order for histopathology examination
* [#89](https://github.com/hl7ch/ch-lab-order/issues/89): Case study chronic renal insufficiency-generic has been deleted.
* [#86](https://github.com/hl7ch/ch-lab-order/issues/86): Add Term 'Nachverordnung' in [ChLabOrderServiceRequestCategories codesystem](https://fhir.ch/ig/ch-lab-order/CodeSystem-ServiceRequest.categories.html)
* [#85](https://github.com/hl7ch/ch-lab-order/issues/85): Remove SR of Vital Monitoring Devices; should be realized under a separate IG.
* [#84](https://github.com/hl7ch/ch-lab-order/issues/84): The Resource ServiceRequest provides that reasonCode and/or a reasonReference can be added to the job as Condition, Observation, DiagnosticReport, DocumentReference; the description of UC 7 has been completed
* [#82](https://github.com/hl7ch/ch-lab-order/issues/82): Previous lab results or images can be easily requested by phone. However, if a previous order can still be found in the system, the associated results can be requested easily and precisely by adjusting the value of ServiceRequest.categories accordingly.
* [#81](https://github.com/hl7ch/ch-lab-order/issues/81): LAB-Order without Q / QR: By adopting from the change in ORF, proposal 2 from Emmanuel and the UC around "lab orders without Forms/ Q QR" comes to fruition:
* [#76](https://github.com/hl7ch/ch-lab-order/issues/76): Want's to add a Reason for Order: We have reasonReference reasonCode and reasonCode.text in SR for further information, has zu be mapped Q to SR; see issue [#128](https://github.com/hl7ch/ch-lab-order/issues/128) above
* [#75](https://github.com/hl7ch/ch-lab-order/issues/75): Resolved in ORF: Practitioner and PractitionerRole may have GLN and ZSR as Identifier, the same for ReceiverCopies, has to be resolved in ORF too in a STU 2
* [#74](https://github.com/hl7ch/ch-lab-order/issues/74): AHVN13 as Patient Identifier: The use of the AHVN13 is regulated in Art. 5 EPDG. It can be used for: query of the patient identification number at the central clearing office ZAS
correct assignment of the patient identification number. In principle, several identifiers are possible for the patient. BUT: It is forbidden to store the AHVN13 permanently. Thus, the use of AHVN13 as a patient identifier is not possible.
* [#73](https://github.com/hl7ch/ch-lab-order/issues/73): Resolved, see issue [#75](https://github.com/hl7ch/ch-lab-order/issues/75) above
* [#71](https://github.com/hl7ch/ch-lab-order/issues/71): Missing insurance Information: resolved, see <http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization-epr>
* [#65](https://github.com/hl7ch/ch-lab-order/issues/65): Addition form conformance
* [#64](https://github.com/hl7ch/ch-lab-order/issues/64): The fields order.title, order.type and order.category are readonly in the CH ORF Questionnaire, so the same in Laborder
* [#62](https://github.com/hl7ch/ch-lab-order/issues/62): Document Profile is missing: added

#### Further Adaptations
* Removed not used ValueSets
* Put serviceRequest.categories into ChLabOrderSR, replace it's value with fixed value 'Laboratory procedure (procedure)' for all ServiceRequests.
* Replace in casestudies parent ChOrfServiceRequest with ChLabOrderSR
* Reset dependencies ch.fhir.ig.ch-orf: current to 2.0.1
* Reset dependencies ch.fhir.ig.ch-core: current to 4.0.1
* Adapt profiles to Condition, DiagnosisCondition, Medication, MedicationStatement

#### Use Cases in German
* Replace: Use Case 2: Verordnung zusätzlicher Untersuchungen der gleichen Probe wie Use Case 9: Laborverordnung ohne Verwendung von Questionnaire und QuestionnaireResponse
* Add example: Use Case 6: Vorschlag von zusätzlichen oder alternativen Untersuchungen durch den Laborarzt (Auftragsempfänger, receiver)
* Modify: Use Case 4: Anfordern von vorhandenen Laborresultaten und Bildern.
* Remove: Use Case 9: Anfordern von Monitoring-Untersuchungen (nicht empfohlen)
* Add orderDetail into Profile ChLabOrderSR to handle orderControlCode
* Add orderControl valueSet
* Modify example in Use Case 2: add orderDetail

#### Discouraged LOINC codes
* Replace all 'Auto Differential panel - Blood' with 'CBC W Auto Differential panel - Blood'
