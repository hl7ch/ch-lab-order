This implementation guide defines the structure and content of laboratory order documents. The actual exchange mechanisms between placer (e.g., EMR systems) and filler (e.g., Laboratory Information Systems) are implementation-specific and depend on the local infrastructure and requirements. CH ORF defines the Submit Bundle [[CH ORF-1]](https://fhir.ch/ig/ch-orf/index.html#submit-bundle-ch-orf-1) transaction which could be used as an exchange mechanism.

{% include img.html img="LabOrderWorkflow.svg" caption="Fig.: Laboratory Order and Testing Workflow" width="60%" %}

### Generate a Laboratory Order Document

#### Laboratory Order Document with Service Request
The customer (e.g. a doctor) requires various laboratory tests to supplement the diagnostic process. He creates an order document in his Electronic Medical Records (EMR) system, which contains the administrative data structured in accordance with the CH Core implementation guide and whose contents are available in the EMR. From the analyses provided by the LIS, he can select those that help him with his question, and he can also determine the samples corresponding to the analyses. For example, he wants to have glucose analyzed in the blood and cerebrospinal fluid. The laboratory system can store the information on the required specimen containers and any additives in the system. The pre-analytical conditions are specified.   

He can also add information about the clinical context to the laboratory order: problem list, current medication list, questions about the prescribed analyses.   

The order document is sent to the laboratory information system (LIS).

* [Examples](StructureDefinition-ch-lab-order-document-with-sr-examples.html) for 'CH LAB-Order Document with Service Request'

#### Laboratory Order Document with Service Request and Form
The client (e.g., physician) requires various laboratory tests for further diagnostics. For this purpose, he creates an order document in his practice information system with the necessary information on the patient, laboratory test, samples, etc. The necessary sample material (serum, urine, cerebrospinal fluid, etc.) is stored in the corresponding order documents. The necessary sample material (serum, urine, cerebrospinal fluid) is collected in appropriate containers and clearly assigned to the order document (Specimen.identifier, Specimen.container.identifier). Samples can be examined in the own laboratory, or they have to be sent via mail or courier to the external laboratory. There, the laboratory information system assigns them their own identifier (Specimen.accessionIdentifier).

A form (Questionnaire) is presented to the client, which contains the following information:
* Metadata of the order
* Information about the order
* Information about the recipient of the order (receiver)
* Information about the patient
* Information on the ordering party (sender)
* Details of any recipients of a copy of the results (receiverCopies)
* Details of the laboratory specialty
* Information on the requested examinations
* Information about the sample material, Specimen
  * Type: e.g. serum, whole Blood, cerebrospinal fluid
  * Subject: reference to the patient
  * Collection: information about collection, collection time, amount, method, collection site (e.g. right arm), fasting period
  * Container, vessel: identifier, type
  * and other more
* Information about the requested service
  * service request.category is RequestForLabExam
  * Question, reason for investigation (ServiceRequest.reasonCode, ServiceRequest.reasonReference)
  * payer (health insurance, accident insurance, etc.)
  * and more

* [Examples](StructureDefinition-ch-lab-order-document-with-sr-and-form-examples.html) for 'CH LAB-Order Document with Service Request and Form'

### Requesting Additional Tests of the Same Sample
It is not uncommon for the results of laboratory tests to lead to the request for additional tests on the same sample, or in-house laboratory analyses are supplemented by further tests that can only be carried out in an external laboratory.

In the [pertussis example](case-studies-english.html#suspicion-of-pertussis), the in-house laboratory tests (automated blood count, CRP) are supplemented by a search for the Bordetella pertussis and parapertussis DNA in the throat swab, carried out by an external contract laboratory, in order to rule out whooping cough.

When the placer system request additional tests the existing samples, it copies the original ServiceRequest, adds the required laboratory tests and an Order Control Code 'RP', which means an order/service replace request. A special invariant rule 'sr-1' ensures that a reference to the original ServiceRequest is created.

The Order Control Codes can also be used to cancel, hold or release order requests on hold. In these cases as well the reference to the original order has to be created.

* The Pertussis-ServiceRequest is replaced by the
* Pertussis-ServiceRequestAddTest, which requests the examination of the throat swab searching for pertussis or parapertussis DNA

Referenced Service Request: The code in the element 'orderDetail' would be 'NW' for "New order/service", or the element could be completely omitted.

Service Replace Request: The Replace Request contains a Reference to the previous ServiceRequest and an element 'orderDetail', carries the order Control Code from the Code System v2-0119: RP for "Order/service replace request", 'CA' for "Cancel order/service request", 'HD' for "Hold order request", and 'RL' for "Release previous hold"

* [CH LAB-Order Document with Service Request](Bundle-2-pertussis-document-with-sr.html)
* [CH LAB-Order Document with Service Request and Form](Bundle-2-pertussis-document-with-sr-and-form.html)


### Collective Request for Toxicological Testing
This use case corresponds to the [biological monitoring example](case-studies-english.html#suva-biological-monitoring). In order to assess the exposure of workers to chemical substances, measurements at the workplace are supplemented by occupational health checkups. The toxic substances themselves or their metabolites in serum or urine can be determined. The order is initiated by the occupational physician of the company or the insurance company. The problem of employee fluctuations must be kept in mind.

Examples are:
* Occupational medicine: ordering laboratory tests on a group of workers
  * ServiceRequest.subject refers to a group
  * ServiceRequest.specimen refers to several samples (0..*)
* Food industry: investigation on employee hygiene (e.g. salmonella contamination)
* Police investigations

Work lists are processed, which last over a longer period of time (days/weeks). Generally, specific examinations are requested on multiple patients.

* [CH LAB-Order Document with Service Request](Bundle-5-biol-monit-document-with-sr.html)
* [CH LAB-Order Document with Service Request and Form](Bundle-5-biol-monit-document-with-sr-and-form.html)
