All significant changes to this FHIR implementation guide will be documented on this page.

### STU 1 Ballot

#### Open Issues for STU 2

* Issue #132: Try to build a Questionnaire with a general part an 6 specific parts
* Issue #128: Mapping reasonCode und reasonReference from Q to SR
* Issue #127: Mapping Questionnaire code to Service Request code
* Issue #88: look at #128; preanalytical notes which belong to specimen
* Issue #87: Relations between Specimens and Tests
* Issue #80: User should be able to select analyses or analyse panels from a Catalog. The applies to Specimens
* Issue #79: Pick desired Analyses and Specimens from am Catalog
* Issue # 78: Test to be performed is missing in ServiceRequest.code: Has to be performed by mapping
* Issue #77: Pathology Order: Add example
* Issue #72: Relation between Tests and Specimens my be needed

#### Follow up of changes in CH-orf

* [ORF Issue #31](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/31): The values for the readonly fields order.title, order.type, order.category are now defined fix in the composition and shonw no more in the questionnaire.

* [ORF Issue #50](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/50): Change references of the ch-orf-copyreceiver from 'CH Core Organization Profile | CH Core Patient Profil' to 'CH Core Practitioner Role Profile | CH Core Patient Profile | RelatedPerson' and update the Questionnaire accordingly.
* [ORF Issue #53](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/53) (Feedback 1): The patient in the order defined as required ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html), [CH ORF Composition Profile](http://build.fhir.org/ig/hl7ch/ch-orf/StructureDefinition-ch-orf-composition.html)

* [ORF Issue #57](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/57):Added 'GLN' to organization ([Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html)).

* [ORF Issue #60](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/60) and [Issue #63](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/63):   Added patients marital status to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
* [ORF Issue #64](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/64): Add patients language of correspondance to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)).
  
* [ORF Issue #65](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/65): Added 'ZSR' as Practitioner.identifier to the [Questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) and the examples (e.g. [Bundle Order-Referral-Form](http://build.fhir.org/ig/hl7ch/ch-orf/Bundle-bundle-order-referral-form.html)

* [ORF Issue #80](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/80): Expansion of the [questionnaire](http://build.fhir.org/ig/hl7ch/ch-orf/Questionnaire-order-referral-form.html) field 'coverage.self'. Differentiation between [patient himself](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfPatient.html) or [related person](http://build.fhir.org/ig/hl7ch/ch-orf/Coverage-CoverageSelfRelatedPerson.html) as self-payer.

* [ORF Issue #84](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/84): Copy receiver is ment to receive a copy from the order and all evolving results thereof.

* [ORF Issue #91](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/91): Change source of the codes for [desired accommodation](http://build.fhir.org/ig/hl7ch/ch-orf/ValueSet-ch-orf-vs-desiredaccommodation.html).

* [ORF Issue #101](https://github.com/hl7chhttp://build.fhir.org/ig/hl7ch/ch-orf/issues/101) Cardinality for Questionnaire and QR in Composition set to 0..1. For details see home.

#### Missed Links, fixed after Publisher Update

* Issues #90 .. #94

#### Changed / Updated

* Issue #89: Use of SNOMED CT, LOINC in Analyses, Specimens, Specialties etc. is changed in 0-generic-of-ChOrf-Questionnaire
* Issue #86: Add Term 'Nachverordnung' in ChLabOrderServiceRequestCategories codesystem
* Issue #85: Remove SR of Vital Monitoring Devices; should be realized under a separate IG
* Issue #84: The Resource Service Request provides that reasonCode and/or a reasonReference can be added to the job as Condition | Observation | Diagnostic Report | DocumentReference; the descrption of UC 7 has been completed

* Issue #82: Previous lab results or images can be easily requested by phone. However, if a previous order can still be found in the system, the associated results can be requested easily and precisely by adjusting the value of ServiceRequest.categories accordingly.

* [Issue #81: Laborder without Q / QR: By adopting from the change in ORF, proposal 2 from Emmanuel and the UC around "lab orders without Forms/ Q QR" comes to fruition:](https://github.com/hl7ch/ch-rad-order/issues/18#issue-1001931518)

* Issue #76: Want's to add a Reason for Order: We have reasonReference reasonCode and reasonCode.text in SR for further informations, has zu be mapped Q to SR; see issue #128 above

* Issue #75: resolved in ORF: Practitioner and PractitionerRole may have GLN and ZSR as Identifier, the same for ReceiverCopies, has to be resolved in ORF too in a STU 2

* Issue #74: AHVN13 as Patient Identifier: The use of the AHVN13 is regulated in Art. 5 EPDG. It can be used for: query of the patient identification number at the central clearing office ZAS
correct assignment of the patient identification number. In principle, several identifiers are possible for the patient. BUT: It is forbidden to store the AHVN13 permanently. Thus, the use of AHVN13 as a patient identifier is not possible.

* Issue #73: resolved, see issue #75 above

* Issue #71: Missing insurance Information: resolved, see <http://fhir.ch/ig/ch-core/StructureDefinition/ch-core-organization-epr>

* Issue #65: addition form conformance

* Issue #64: The fields order.title, order.type and order.category are readonly in the CH ORF Questionnaire, so the same in Laborder

* Issue #62: Document Profile is missing: added

#### Issues resolved without amendment

* Issue #70: In Composition.entry:ServiceRequest Reference is LAB-Order

* Issue #68: resolved

* Issue #67: Download link for npm package: added

* Issue #66: resolved

* Issue #63: link for navigation and a page to the different questionnaires: On toc.html all questionnaires are under 10 Artifacts Summary, and the different Questionnaires are linked under their names, e.g. 10.2 questionnaire 1-tvt





