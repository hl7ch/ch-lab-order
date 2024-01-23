<!-- markdownlint-disable MD001 MD033 MD041 -->

<div markdown="1" class="stu-note">

  <a href="changelog.html">Significant Changes, Open and Closed Issues</a>

</div>

### HL7 Swiss FHIR Implementation Guide for generic laboratory orders (Order by Service Request only)

This is the HL7 Swiss FHIR Implementation Guide for Laboratory Orders. Electronic Medical Records (EMR) systems can send an electronic laboratory order to a Laboratory Information System (the order filler of a LIS). The analyses that are requested are available as code and as text in the ServiceRequest resource. This resource contains further important information about the requester and performer, the reason for the order, the medication, the conditions (the clinical context), the insurance and the material sample. This specimen ressource, in turn, contains information about the collection, the processing details, any required additives, and the container type to be used, among other things. So all the necessary information for executing the laboratory order is available for the receiving laboratory, and there is no necessity for a Questionnaire and QuestionnaireResponse resource. This quite common use case primarily occurs in hospitals that operate their own medical laboratory.

[CH Core (R4) profiles](https://fhir.ch/ig/ch-core/index.html) and [CH EPR Term](https://fhir.ch/ig/ch-epr-term/2.0.9/index.html) are used to take account of national requirements.

#### Order by Form (optional)

There is another use case in which the commissioning laboratory provides the client with a form, similar to how laboratories forms are used to serve clients with paper-based forms. The lab order takes the form of a FHIR bundle resource of type 'document' and uses the CH ORF (R4), Order & Referral by Form - Implementation Guide <http://fhir.ch/ig/ch-orf/index.html> to structure the administrative data (data provider, contact for order-document, recipient, copy recipient, document type and document class, patient, author).This situation is implemented here using CH ORF (R4), Order & Referral by Form - Implementation Guide <http://fhir.ch/ig/ch-orf/index.html> to structure the administrative data (data provider, contact for order-document, recipient, copy recipient, document type and document class, patient, author). It includes the two resources Questionnaire (form) and QuestionnaireResponse (completed form) in the document in addition to the ServiceRequest resource. CH-ORF (R4) Implementation Guide uses the FHIR Implementation Guide for Structured Data Capture (SDC) for creating user-friendly questionnaires [SDC](https://build.fhir.org/ig/HL7/sdc/index.html) to offer forms with pre-filled fields and selectable ValueSets.

#### Download

You can download this Implementation Guide in [NPM-format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](https://fhir.ch/ig/ch-lab-order/package.tgz).

### Foundation

#### Laboratory order (Service Request only)

This implementation Guide uses FHIR Resources. The complete laboratory order is a bundle resource of type document. The first entry is the composition containing the structured data of the order (status, type, category, subject, encounter, date, author, confidentiality, attester etc.). A section element has an entry with the Service request reference.

The ServiceRequest may instantiate a ActivityDefinition, a coded procedure to execute a single laboratory test (e.g. Sodium concentration in Serum), or to execute an entire test panel (e.g. concentration of Electrolytes in Serum). Using a ServiceRequest Container we can reference to other ServiceRequest Containers or to Single Test Service Requests.

#### Laboratory order by form (optional)

The lab order can optionally and in addition to the ServiceRequest contain forms as resources, which in this context are called Questionnaire and QuestionnairResponse. The structure of these forms is [based on ORF](http://fhir.ch/ig/ch-orf/ImplementationGuide/ch.fhir.ig.ch-orf). This allows the data for the laboratory order to be placed in a structured form.

### Management Summary

The lab-order system should define the structure of the lab-order so it can be used by different laboratories and different providers of practice or clinic systems or independent tool.

1. The partly or fully filled electronic order should be safeble in the order filler system (practice system, clinic system), so it can be changed until the samples are scanned by the receiver laboratory.

2. Data about practitioner, patient and treatment should be transferable to the electronic order.

3. In the electronic order system all available analyses should be presentable, a search option should be available. The content of panels should be visible.
   * The the electronic order system should contain analyses and test-panels. Groups of tests, e.g. for "blood count" are usually requested as panels. They are split into service requests for single analyses in the ServiceRequest Container. If the LIS (Laboratory Information System) knows the components of the panels, it can do the splitting itself.

4. Analyses, Sample type, required Sample additives and preanalytic handling should be presented to the order filler.

   * Information for the sample taking should be available for the person preparing the taking of blood.

   * A numbering system should be supported, so that relabeling at the laboratory can be limited (eg. practitionar number + number-range).

5. The electronic order should be able to handle the request of analyses for samples that were sent at an earlier point of time.

6. The electronic order system should receive updates on the process of the laboratory analyses: as sample received in laboratory, first results available, report finished. [Domain of Lab-Report for a System dealing with Forms].

   * The status of the order at the practitionor site should be supported as well: new order, replaced order (enhanced or partly deleted), printed sample lables, documentation of blood take (additional Information as urine volume and Date and Time of withdrawl of blood).

   * Data exchange with different information systems (practice, hospital, laboratory) quickly becomes confusing due to proprietary solutions (n:m cardinality). Therefore, the question arises whether a standardised order system is not the more favourable solution in the long run.

### Six Case studies with examples for the Order Document

Using specific case histories, we have created five everyday examples of commissioned documents. These are requirements of examinations in the field of hematology, clinical chemistry, coagulation, infectious serology and microbiology. The last example covers the special case where several employees of a company send their biological material (serum, urine) to the laboratory for determination of substances hazardous to health (toxicology).

### Copyright

This artefact includes content from SNOMED Clinical Terms&reg; (SNOMED CT&reg;) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact <http://www.snomed.org/snomed-ct/getsnomed-ct> or <info@snomed.org>.

This artefact includes content from LOINC®. This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at <http://loinc.org/terms-of-use>.

### Safety Considerations

This implementation guide defines data elements, resources, formats, and methods for exchanging healthcare data between different participants in the healthcare process. As such, clinical safety is a key concern. Additional guidance regarding safety for the specification’s many and various implementations is available at: [https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

Although the present specification gives users the opportunity to observe data protection and data security regulations, its use does not guarantee compliance with these regulations. Effective compliance must be ensured by appropriate measures during implementation projects and in daily operations. The corresponding implementation measures are explained in the standard.
In addition, the present specification can only influence compliance with the security regulations in the technical area of standardisation. It cannot influence organisational and contractual matters.

### IP Statements

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" alt="FHIR-icon" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
