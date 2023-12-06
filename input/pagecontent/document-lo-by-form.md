<!-- markdownlint-disable MD041 -->

### FHIR document (Bundle)

This exchange format is defined as a [document type](https://www.hl7.org/fhir/documents.html) that corresponds to a [Bundle](https://www.hl7.org/fhir/bundle.html) as a FHIR resource. A [Bundle](https://www.hl7.org/fhir/bundle.html) has a list of entries. The first entry is the [Composition](https://www.hl7.org/fhir/composition.html), in which all contained entries are then referenced.

{% include img.html img="LabOrderByForm.png" caption="Fig.: Laboratory Order with Questionnaire" width="40%" %}

* **Profile**: [CH LAB-Order Document by Form](StructureDefinition-ch-lab-order-document-by-form.html)
* **Example**: CH LAB-Order Document by Form ([XML](Bundle-ch-lab-order-by-form.xml.html), [JSON](Bundle-ch-lab-order-by-form.json.html))
