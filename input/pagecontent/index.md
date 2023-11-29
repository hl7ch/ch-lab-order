<!-- markdownlint-disable MD001 MD033 MD041 -->

<div markdown="1" class="stu-note">

This implementation guide is under STU ballot by [HL7 Switzerland](https://www.hl7.ch/) until September 30th, 2023 midnight.
Please add your feedback via the ‘Propose a change’-link in the footer on the page where you have comments.

  <a href="changelog.html">Significant Changes, Open and Closed Issues</a>

</div>

### HL7 Swiss FHIR Implementation Guide for generic laboratory orders

This is the HL7 Swiss FHIR implementation guide for Laboratory Orders, which can be implemented as Orders by Forms or as Orders by ServiceRequest only.

#### Order by Form

Orders are based on CH ORF (R4), Order & Referral by Form - Implementation Guide <http://fhir.ch/ig/ch-orf/index.html>, which refers on the CH Core Profiles of Switzerland and on CH EPR Term.

It also refers to FHIR Implementation Guide for Structured Data Capture (SDC) for creating user-friendly questionnaires [SDC](https://build.fhir.org/ig/HL7/sdc/index.html) and targets forms that can be presented to the user with pre-filled input fields, and also provide guidance with searchable value sets.
There are some enhancements to the general Order and Referral implementation guide. Above all, samples play a major role in the laboratory and pathology area and must be closely linked to the order so that they can be correctly assigned in the executing laboratory. In general, the Laboratory Implementation Guide can also be used for pathology orders, which often follow the same path and are passed on from the laboratories to specialized pathology departments. And similar to other divisions, previous findings and images can also be requested.

This IG follows the Swiss eHealth Exchange Format Handbook Part I: Service Requests V 0.13. The Questionnaire resource gives guidance for the implementation of the user interface.

Since many laboratories offer possibilities for monitoring vital signs, such as Blood pressure, ECG, pulse, these services can be ordered. But these use cases are out of scope of this implemantation guide, since there is a specific FHIR-Resource named DeviceRequest - Content, which should be used for this purose.

#### Order by ServiceRequest

This case primarily occurs in hospitals that operate their own medical laboratory. There is no Questonnaire, no QuestionnaireResponse, only the ServiceRequest, which contains what is beeing requested in a CodeableConcept. Therefore the service can be requested as a LOINC Code witĥ supplementary text string. Additional order information can be supplied in an 'orderDetail' element.

#### Download

You can download this Implementation Guide in [NPM-format](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) from [here](https://fhir.ch/ig/ch-lab-order/package.tgz).

### Foundation

Applications claiming for conformance with the CH LAB-Order Implementation Guide shall:
-Render (and in case of the Questionnaire filler allow for data entry) all elements of a questionnaire in the user interface (e.g. on screen, in print).

For Clinical Information: Grouping of items and the order of items within shall be adequately reproduced according to the Questionnaire.
<http://fhir.ch/ig/ch-lab-order/index.html#foundation>

### Management Summary

The lab-order system should define the structure of the lab-order so it can be used by different laboratories and different providers of practice or clinic systems or independent tool.

1. The partly or fully filled electronic order should be safeble in the order filler system (practice system, clinic system), so it can be changed until the samples are scanned by the receiver laboratory.

2. Data about practitioner, patient and treatment should be transferable to the electronic order.

3. In the electronic order system all available analyses should be presentable, a search option should be available. The content of panels should be visible.
   * The the electronic order system should contain analyses and test-panels . Groups of tests, e.g. for "blood count" are usually requested as panels. They are split into service requests for single analyses in the ServiceRequest Container. If the LIS (Laboratory Information System) knows the components of the panels, it can do the splitting itself.

4. Analyses, Sample type, required Sample additives and preanalytic handling should be presented to the order filler.

   * Information for the sample taking should be available for the person preparing the taking of blood

   * A numbering system should be supported, so that relabeling at the laboratory can be limited (eg. practitionar number + number-range)

5. The electronic order should be able to handle the request of analyses for samples that were sent at an earlier point of time.

6. The electronic order system should receive updates on the process of the laboratory analyses: as sample received in laboratory, first results available, report finished. [Domain of Lab-Report for a System dealing with Forms]

   * The status of the order at the practitionor site should be supported as well: new order, replaced order (enhanced or partly deleted), printed sample lables, documentation of blood take (additional Information as urine volume and Date and Time of withdrawl of blood)

   * Data exchange with different information systems (practice, hospital, laboratory) quickly becomes confusing due to proprietary solutions (n:m cardinality). Therefore, the question arises whether a standardised order system is not the more favourable solution in the long run.

### Six Case studies with examples for the Order Document

Using specific case histories, we have created five everyday examples of commissioned documents. These are requirements of examinations in the field of hematology, clinical chemistry, coagulation, infectious serology and microbiology. The last example covers the special case where several employees of a company send their biological material (serum, urine) to the laboratory for determination of substances hazardous to health (toxicology).

### Copyright

This artefact includes content from SNOMED Clinical Terms&reg; (SNOMED CT&reg;) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact <http://www.snomed.org/snomed-ct/getsnomed-ct> or <info@snomed.org>.

This artefact includes content from LOINC®. This content LOINC® is copyright © 1995 Regenstrief Institute, Inc. and the LOINC Committee, and available at no cost under the license at <http://loinc.org/terms-of-use>.

### Safety Considerations

This implementation guide defines data elements, resources, formats, and methods for exchanging healthcare data between different participants in the healthcare process. As such, clinical safety is a key concern. Additional guidance regarding safety for the specification’s many and various implementations is available at: [https://www.hl7.org/FHIR/safety.html](https://www.hl7.org/FHIR/safety.html).

<<<<<<< HEAD
Although the present specification does gives users the opportunity to observe data protection and data security regulations, its use does not guarantee compliance with these regulations. Effective compliance must be ensured by appropriate measures during implementation projects and in daily operations. The corresponding implementation measures are explained in the standard.
=======
Although the present specification gives users the opportunity to observe data protection and data security regulations, its use does not guarantee compliance with these regulations. Effective compliance must be ensured by appropriate measures during implementation projects and in daily operations. The corresponding implementation measures are explained in the standard. 
>>>>>>> IG-ohne-Q
In addition, the present specification can only influence compliance with the security regulations in the technical area of standardisation. It cannot influence organisational and contractual matters.

### IP Statements

This document is licensed under Creative Commons "No Rights Reserved" ([CC0](https://creativecommons.org/publicdomain/zero/1.0/)).

HL7®, HEALTH LEVEL SEVEN®, FHIR® and the FHIR <img src="icon-fhir-16.png" style="float: none; margin: 0px; padding: 0px; vertical-align: bottom"/>&reg; are trademarks owned by Health Level Seven International, registered with the United States Patent and Trademark Office.

This implementation guide contains and references intellectual property owned by third parties ("Third Party IP"). Acceptance of these License Terms does not grant any rights with respect to Third Party IP. The licensee alone is responsible for identifying and obtaining any necessary licenses or authorizations to utilize Third Party IP in connection with the specification or otherwise.

{% include ip-statements.xhtml %}

### Cross Version Analysis

{% include cross-version-analysis.xhtml %}

### Dependency Table

{% include dependency-table.xhtml %}

### Globals Table

{% include globals-table.xhtml %}
