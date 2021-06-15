<div markdown="1" class="stu-note">
This implementation guide is under STU ballot by HL7 Switzerland until September 24th, 2021 midnight. 
Please add your feedback via the ‘Propose a change’-link in the footer on the page where you have comments.
</div>

### HL7 Swiss FHIR Implementation Guide for generic laboratory order forms

Note: This implementation guide is under STU ballot by HL7 Switzerland until September 24th, 2021 midnight. Please add your feedback via the ‘Propose a change’-link in the footer on the page where you have comments.

This is HL7 Swiss FHIR implementation guide for Laboratory Orders, which is based on CH_ORF (v0.9.1 STU Draft) Order & Referral by Form - Implementation Guide (CH:ORF) <http://fhir.ch/ig/ch-orf/index.html>, which refers on the CH Core Profiles of Switzerland and on CH-EPR Term.

It also refers to FHIR Implementation Guide for Structured Data Capture (SDC) for creating user-friendly questionnaires <http://build.fhir.org/ig/HL7/sdc/index.html> and targets forms that can be presented to the user with pre-filled input fields, and also provide guidance with searchable value sets.
There are some enhancements to the general Order and Referral implementation guide. Above all, samples play a major role in the laboratory and pathology area and must be closely linked to the order so that they can be correctly assigned in the executing laboratory. In general, the Laboratory Implementation Guide can also be used for pathology orders, which often follow the same path and are passed on from the laboratories to specialized pathology departments. And similar to other divisions, previous findings and images can also be requested. Many laboratories also offer services for monitoring vital signs, such as blood pressure, ECG, pulse, which can be ordered.

### Management Summary

Customers of laboratories want to create their orders as efficiently and correctly as possible with the help of order forms. For this purpose, the laboratories provide forms that meet the following requirements:

1. The form should be able to be processed in their own informatics system (practice system, clinic system).

2. Pre-filled fields with information about the client, the patient, the commissioned laboratory, should facilitate the order process.

3. A Catalog (StructureDefinition Catalog) with the references of the examinations (Reference CatalogEntry) offered by the laboratory may be available. In order for the customer to be able to orientate himself in the abundance of possible examinations, it may be possible to search within laboratory specialties (Laboratory Order Panels). This part of the ordering process is here out of scope.

4. Sample properties (specimen), type of sample, vessel, etc., preanalytical specifications must be specified, and the customer must be able to provide additional information (e.g. oxygen flow rate, time of last meal, 24 h urine volume,). Parts of these informations can also be provided in a Catalog.

5. The order document should also cover other use cases. For example, a subsequent prescription of analyses on the same sample is foreseen, a common use case. It is also envisaged that the laboratory physician can make suggestions to the client for useful additional examinations, based on the original order.

6. Efficient commissioning places high demands on the standardisation and interoperability of data processing. The information systems of the client and the laboratory are involved. Likewise, the documents created should contain the required metadata for the EPD (Electronic Patient Dossier), and at the same time they can provide the metadata for the resulting diagnosis report.

7. Data exchange with different information systems (practice, hospital, laboratory) quickly becomes confusing due to proprietary solutions (n:m cardinality). Therefore, the question arises whether a standardised order system is not the more favourable solution in the long run.

The proposed solution consists of independent modules and can therefore be quickly adapted to new requirements. Thus, the laboratories can adapt their order panels and examinations in their catalogues as needed, as well as the structured data entry for additional information.

### Five Case studies with examples for the Order Document

Using specific case histories, we have created five everyday examples of commissioned documents. These are requirements of examinations in the field of hematology, clinical chemistry, coagulation, infectious serology and microbiology. The last example covers the special case where several employees of a company send their biological material (serum, urine) to the laboratory for determination of substances hazardous to health (toxicology).

### Copyright

This artefact includes content from SNOMED Clinical Terms&reg; (SNOMED CT&reg;) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact <http://www.snomed.org/snomed-ct/getsnomed-ct> or info@snomed.org.

This artefact includes content from LOINC®. This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at <http://loinc.org/terms-of-use>.
