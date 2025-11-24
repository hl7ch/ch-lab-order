<!-- markdownlint-disable MD041 -->

### FHIR document (Bundle)

This exchange format is defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/bundle.html) as a FHIR resource. A [Bundle](https://www.hl7.org/fhir/bundle.html) has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="LabOrderWithSR_andForm.png" caption="Fig.: Laboratory Order with Questionnaire" width="40%" %}

* **Profile**: [CH LAB-Order Document with ServiceRequest and Form](StructureDefinition-ch-lab-order-document-with-sr-and-form.html)

* **Example**: CH LAB-Order Document with ServiceRequest and Form ([XML](Bundle-ch-lab-order-with-sr-and-form.xml.html), [JSON](Bundle-ch-lab-order-with-sr-and-form.json.html))

* **Specification:** [Specification Questionnaire](Questionnaire-LabOrder-form.html)
  
* **Example Form:** [Questionnaire Lab Order](https://laborprojektgruppe.ch/questionnaire/)
