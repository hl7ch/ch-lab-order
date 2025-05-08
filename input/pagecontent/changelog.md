<!-- markdownlint-disable MD001 MD041 -->

All significant changes to this FHIR implementation guide will be documented on this page.

### Changes
* Add example for Renal Insufficiency as Panel with PlanDefinition and ActionDefinition
* [Issue#332](https://github.com/hl7ch/ch-lab-order/issues/332  Instance 3-gyn-ServiceRequest: split each lab test into a separate Service Request
* [Issue#329](https://github.com/hl7ch/ch-lab-order/issues/329) ObservationDefinition Hemoglobin blood -> fix erroneous entries


### Fixed
* [#313](https://github.com/hl7ch/ch-core/issues/313): Add [expansion-parameter](https://build.fhir.org/codesystem-guide-parameter-code.html#:~:text=expansion%2Dparameter,as%20SNOMED%20CT) for the usage of SNOMED CT Swiss Extension 

### Open Issues for STU 3

* [Issue #314](https://github.com/hl7ch/ch-lab-order/issues/314) Profile : ChLabOrderMedication -> Parent: Medication, Profile: MedicationStatement -> CHCoreCHCoreMedicationStatement, Profile: ChLabOrderDiagnosisCondition -> Parent: Condition

* [Issue #313](https://github.com/hl7ch/ch-lab-order/issues/313) ch.fhir.ig.ch-lab-order#2.0.0-ballot /terminology.html -- replaced status = #draft with status = #active in all occurrencies

* [Issue #312](https://github.com/hl7ch/ch-lab-order/issues/312) Rename ChLabOrderLabSpecialties to ChLabOrderLabStudyTypes, change title to "Laboratory Study Types". Translate all Titles of ValueSets to english.

* [Issue #311](https://github.com/hl7ch/ch-lab-order/issues/311) removed from Aliases.fsh:
Alias:  $documentEntryClassCode, Alias:  $documentEntryTypeCode

* [Issue #296](https://github.com/hl7ch/ch-lab-order/issues/296) Add task resource to enable workflow communication

* [Issue #260](https://github.com/hl7ch/ch-lab-order/issues/260) Using Laboratory Catalogue

* [Issue #72](https://github.com/hl7ch/ch-lab-order/issues/72) Relation between Tests and Specimens my be needed. The relation should be established by a test-specific PlanDefinition as extension specimenRequested, which points to the test-specific SpecimenDefinition. The test-specific PlanDefinition and SpecimenDefinition should be provided by a LabCatalog/Compendium. So the Lab Organization can independently define their tests with all the needed preanalytic conditions.

* [Issue #128](https://github.com/hl7ch/ch-lab-order/issues/128) Mapping reasonCode und reasonReference from Q to SR

* [Issue #127](https://github.com/hl7ch/ch-lab-order/issues/127) Mapping Questionnaire code to Service Request code

### STU 2 Ballot

* [Issue #284](https://github.com/hl7ch/ch-lab-order/issues/284) Home - IG Fragments (Safety Considerations) (Patrick Jolo eHealth Suisse) - changed

* [Issue #282](https://github.com/hl7ch/ch-lab-order/issues/282) Examples needed that indicate request of analyses and linked information (Corina von Känel) - Example added

* [Issue #281](https://github.com/hl7ch/ch-lab-order/issues/281) Use Cases in German: use case 10 a specialised case of use case 2? (Emmanuel Eschmann, CISTEC) - All Use Cases and translations refactored because of making the order using Questionnaire and QuestionnaireResponse as option

* [Issue #280](https://github.com/hl7ch/ch-lab-order/issues/280) FHIR IGs must not have a TODO to be eligible for FMM Level 3 (Emmanuel Eschmann, CISTEC) - open TODOs resolved

* [Issue #279](https://github.com/hl7ch/ch-lab-order/issues/279) Use Cases in German: Profile for use case 2? (Emmanuel Eschmann, CISTEC) - All Use Cases and translations refactored because of making the order using Questionnaire and QuestionnaireResponse as option

* [Issue #278](https://github.com/hl7ch/ch-lab-order/issues/278) Mismatch between use case 2 in English and in German (Emmanuel Eschmann, CISTEC) - All Use Cases and translations refactored because of making the order using Questionnaire and QuestionnaireResponse as option

* [Issue #277](https://github.com/hl7ch/ch-lab-order/issues/277) Management Summary Change - rewording (Corina von Känel, CISTEC AG) - Management summary text has been modified.

* [Issue #276](https://github.com/hl7ch/ch-lab-order/issues/276) Ordering of Containers, Blood Pressure instruments should not be covered by lab order (Corina von Känel, CISTEC AG) - Ordering of non laboratory sample measurements is no more part of the IG

* [Issue #275](https://github.com/hl7ch/ch-lab-order/issues/275) Home: Typos (Michaela Ziegler, ahdis ag) - Typos fixed

* [Issue #274](https://github.com/hl7ch/ch-lab-order/issues/274) CH LAB-ORDER Document Profile: Spelling (Michaela Ziegler, ahdis ag) - Spelling is unified

* [Issue #272](https://github.com/hl7ch/ch-lab-order/issues/272) Case Studies in German (Gabriel Hess, BFH I4MI) #272 - Links fixed

* [Issue #253](https://github.com/hl7ch/ch-lab-order/issues/253) shift license to CC0 1.0 Universal (CC0 1.0) - Switched to CC

#### Follow up of changes in CH ORF

* [Change Log CH-ORF](http://build.fhir.org/ig/hl7ch/ch-orf/changelog.html):

#### Follow up of changes in CH TERM

* [#98](https://github.com/hl7ch/ch-term/issues/98): Add NamingSystem for VEKA and GTIN



#### Changed / Updated

* [Issue #132](https://github.com/hl7ch/ch-lab-order/issues/132) Try to build a Questionnaire with a general part and 6 specific parts: [Questionnaire Specification](http://build.fhir.org/ig/hl7ch/ch-lab-order/Questionnaire-LabOrder-form.html)

* [Issue #88](https://github.com/hl7ch/ch-lab-order/issues/88) The pre-analytical conditions and any limitations are specified in the laboratory catalogue. These include, for example, the fasting of the patient, the type of sample container, the storage period and temperature of the sample, the reasons for rejection, etc. In addition, the costs of Vitamin D determination are only covered by health insurance in certain situations, e.g. rickets, osteoporosis, etc.

* [Issue #87](https://github.com/hl7ch/ch-lab-order/issues/87) Relations between Specimens and Tests. Refer to [Issue #72](https://github.com/hl7ch/ch-lab-order/issues/72)

* [Issue #80](https://github.com/hl7ch/ch-lab-order/issues/80) User should be able to select analyses or analyse panels from a Laboratory Catalog. The applies to Specimens

* [Issue #79](https://github.com/hl7ch/ch-lab-order/issues/79) Pick desired Analyses and Specimens from am Catalog

* [Issue #78](https://github.com/hl7ch/ch-lab-order/issues/78) Test to be performed is missing in ServiceRequest.code

* [Issue #77](https://github.com/hl7ch/ch-lab-order/issues/77) Pathology Order: Case Study and Instance is added: Case study 6: Suspected Melanoma, order for histopathology examination
* [Issue #89](https://github.com/hl7ch/ch-lab-order/issues/89): Case study chronic renal insufficiency-generic has been deleted.
* [Issue #86](https://github.com/hl7ch/ch-lab-order/issues/86): Add Term 'Nachverordnung' in [ChLabOrderServiceRequestCategories codesystem](https://fhir.ch/ig/ch-lab-order/CodeSystem-ServiceRequest.categories.html)
* [Issue #85](https://github.com/hl7ch/ch-lab-order/issues/85): Remove SR of Vital Monitoring Devices; should be realized under a separate IG
* Issue #84: The Resource Service Request provides that reasonCode and/or a reasonReference can be added to the job as Condition | Observation | Diagnostic Report | DocumentReference; the descrption of UC 7 has been completed
* Issue #82: Previous lab results or images can be easily requested by phone. However, if a previous order can still be found in the system, the associated results can be requested easily and precisely by adjusting the value of ServiceRequest.categories accordingly.

* [Issue #81: Laborder without Q / QR: By adopting from the change in ORF, proposal 2 from Emmanuel and the UC around "lab orders without Forms/ Q QR" comes to fruition:](https://github.com/hl7ch/ch-rad-order/issues/18#issue-1001931518)
* Issue #76: Want's to add a Reason for Order: We have reasonReference reasonCode and reasonCode.text in SR for further information, has zu be mapped Q to SR; see issue #128 above
* Issue #75: resolved in ORF: Practitioner and PractitionerRole may have GLN and ZSR as Identifier, the same for ReceiverCopies, has to be resolved in ORF too in a STU 2
* Issue #74: AHVN13 as Patient Identifier: The use of the AHVN13 is regulated in Art. 5 EPDG. It can be used for: query of the patient identification number at the central clearing office ZAS
correct assignment of the patient identification number. In principle, several identifiers are possible for the patient. BUT: It is forbidden to store the AHVN13 permanently. Thus, the use of AHVN13 as a patient identifier is not possible.
* Issue #73: resolved, see issue #75 above
* Issue #71: Missing insurance Information: resolved, see <http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization-epr>
* Issue #65: addition form conformance
* Issue #64: The fields order.title, order.type and order.category are readonly in the CH ORF Questionnaire, so the same in Laborder
* Issue #62: Document Profile is missing: added

#### Issues resolved without amendment

* removed not used ValueSets
* put serviceRequest.categories into ChLabOrderSR, replace it's value with fixed value 'Laboratory procedure (procedure)' for all ServiceRequests.
* replace in casestudies parent ChOrfServiceRequest with ChLabOrderSR
* reset dependencies ch.fhir.ig.ch-orf: current to 2.0.1
* reset dependencies ch.fhir.ig.ch-core: current to 4.0.1
* adapt profiles to Condition, DiagnosisCondition, Medication, MedicationStatement

##### usecases-german.md

* Replace: Use Case 2: Verordnung zusätzlicher Untersuchungen der gleichen Probe with Use Case 9: Laborverordnung ohne Verwendung von Questionnaire und QuestionnaireResponse
* Add example:  Use Case 6: Vorschlag von zusätzlichen oder alternativen Untersuchungen durch den Laborarzt (Auftragsempfänger, receiver)
* Modify: Use Case 4: Anfordern von vorhandenen Laborresultaten und Bildern.
* Remove: Use Case 9: Anfordern von Monitoring-Untersuchungen (nicht empfohlen)
* Add orderDetail into Profile ChLabOrderSR to handle orderControlCode
* Add orderControl valueSet
* Modify example in Use Case 2: add orderDetail

### Discouraged LOINC codes

 * replace all 'Auto Differential panel - Blood' with 'CBC W Auto Differential panel - Blood'
