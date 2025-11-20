<!-- markdownlint-disable MD001 MD033 MD041 -->

### HL7 Swiss FHIR Implementation Guide for Generic Laboratory Orders

<div markdown="1" class="stu-note">

During the STU ballot by [HL7 Switzerland](https://www.hl7.ch/de/) until September 30th, 2025 comments were raised that 
a further evolution of the Laboratory Order Implementation Guide should not be document-based, but based on the fundamental patterns described in the [Clinical Order Workflow (COW) Implementation Guide](https://hl7.org/fhir/uv/cow/2025May/). The lab group agreed that clinical order workflows should be the long-term goal and future of LAB Order. However, due to lack of resources it is proposed to stick with the document-based approach. The successful implementation and establishment of this approach is already considered a significant improvement.

</div>

#### Laboratory Order with Service Request

This is the HL7 Swiss FHIR Implementation Guide for Laboratory Orders. Electronic Medical Records (EMR) systems can send an electronic laboratory order to a Laboratory Information System (the order filler of a LIS). This laboratory order consists of a FHIR bundle resource of type 'document' with the necessary information about the patient, his medication and his conditions (the clinical context), the ordering practitioner, the organization, the laboratory, etc. The analyses that are requested are available as code and as text in the ServiceRequest resource. This resource contains further important information about the reason for the order, the payer, and the material sample. This specimen resource, in turn, contains information about the collection, the processing details, any required additives, and the container type to be used, among other things. So all the necessary information for executing the laboratory order is available for the receiving laboratory, and there is no necessity for a Questionnaire and QuestionnaireResponse resource. This quite common use case primarily occurs in hospitals that operate their own medical laboratory.

[CH Core](https://fhir.ch/ig/ch-core/index.html) and [CH Term](https://fhir.ch/ig/ch-term/index.html) are used to take account of national requirements.

#### Laboratory Order with Service Request and Form (optional)

There is another use case in which the commissioning laboratory provides the client with a form, similar to how laboratories forms are used to serve clients with paper-based forms. The lab order appears again as a FHIR bundle resource of type 'document'. This situation is implemented here using [CH ORF, Order & Referral by Form Implementation Guide](http://fhir.ch/ig/ch-orf/index.html) to structure the input of the administrative and clinical data (data provider, contact for order-document, recipient, copy recipient, document type and document class, patient, author, tests, specimen etc). It includes the two resources Questionnaire (form) and QuestionnaireResponse (completed form) in the document in addition to the ServiceRequest resource. The CH ORF Implementation Guide is based on the [SDC](http://hl7.org/fhir/uv/sdc/STU3/) framework and applies its concepts to provide user-friendly forms featuring pre-populated fields and ValueSet-driven selections.

#### Download

You can download this Implementation Guide in [NPM-format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](https://fhir.ch/ig/ch-lab-order/package.tgz).

### Foundation

Data exchange with different information systems (practice, hospital, laboratory) quickly becomes confusing due to proprietary solutions (n:m cardinality). Therefore, the question arises whether a standardized order interface is the more favorable solution in the long run.

#### Laboratory Order with Service Request

This implementation Guide uses FHIR Resources. The complete laboratory order is a bundle resource of type document. The first entry is the composition containing the structured data of the order (status, type, category, subject, encounter, date, author, confidentiality, attester etc). A section element has an entry with the Service request reference.

The ServiceRequest may instantiate an ActivityDefinition, a coded procedure to execute a single laboratory test (e.g. Sodium concentration in Serum), or to execute an entire test panel (e.g. concentration of Electrolytes in Serum). Using a ServiceRequest Container we can reference to other ServiceRequest Containers or to Single Test Service Requests.

#### Laboratory Order with Service Request and Form

The lab order can optionally and in addition to the ServiceRequest contain forms as resources, which in this context are called Questionnaire and QuestionnaireResponse. The structure of these forms is [based on ORF](http://fhir.ch/ig/ch-orf/ImplementationGuide/ch.fhir.ig.ch-orf). This allows the data for the laboratory order to be placed in a structured way.

### Requirements

The lab-order should define the structure of the order details so it can be used by different laboratories and different providers of practice or clinic systems or independent tool.

1. The partly or fully filled electronic order should be storable in the order placer system (practice system, hospital system), so it can be changed until the samples are scanned by the receiver laboratory.

2. Data about practitioner, patient and treatment should be transferable to the electronic order.

3. In the electronic order all available analyses should be presentable, a search option should be available. The content of panels should be visible.
   * The the electronic order should contain analyses and test-panels. Groups of tests, e.g. for "blood count" are usually requested as panels. They are split into service requests for single analyses in the ServiceRequest Container. If the LIS (Laboratory Information System) knows the components of the panels, it can do the splitting itself.

4. Analyses, Sample type, required Sample additives and preanalytic handling should be presented to the order filler.

   * Information for the sample taking should be available for the person preparing the taking of blood.

   * A numbering system should be supported, so that relabeling at the laboratory can be limited (eg. practitioner number + number-range).

5. The electronic order should be able to handle the request of analyses for samples that were sent at an earlier point of time.

6. The electronic order should receive updates on the process of the laboratory analyses: as sample received in laboratory, first results available, report finished [Domain of Lab-Report].

   * The status of the order at the practitioner site should be supported as well: new order, replaced order (enhanced or partly deleted), printed sample labels, documentation of blood take (additional Information as urine volume and Date and Time of withdrawal of blood).

### Six Case Studies with Examples for the Order Document

Using concrete case studies ([en](case-studies-english.html), [de](case-studies-german.html), [fr](case-studies-french.html)), we have created six everyday examples of documents that contain a laboratory order. These are requirements of laboratory analyses in the field of hematology, clinical chemistry, coagulation, infectious serology and microbiology. The biological monitoring example covers the special case where several employees of a company send their biological material (serum, urine) to the laboratory for determination of substances hazardous to health (toxicology).

### Copyright

This artefact includes content from SNOMED Clinical Terms&reg; (SNOMED CT&reg;) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artifacts must have the appropriate SNOMED CT Affiliate license - for more information contact <http://www.snomed.org/snomed-ct/getsnomed-ct> or <info@snomed.org>.

This artefact includes content from LOINC®. This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at <http://loinc.org/terms-of-use>.

### Safety Considerations

This Implementation Guide defines data elements, resources, formats, and methods for exchanging healthcare data between different participants in the healthcare process. As such, clinical safety is a key concern. Additional guidance regarding safety for the specification’s many and various implementations is available at: [https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification gives users the opportunity to observe data protection and data security regulations, its use does not guarantee compliance with these regulations. Effective compliance must be ensured by appropriate measures during implementation projects and in daily operations. The corresponding implementation measures are explained in the standard.
In addition, the present specification can only influence compliance with the security regulations in the technical area of standardisation. It cannot influence organisational and contractual matters.

### IP Statements

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" alt="FHIR-icon" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This Implementation Guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
