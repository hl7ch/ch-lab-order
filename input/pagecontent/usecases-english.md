<!-- markdownlint-disable MD001 MD033 MD041 -->
<!--
╭───────────────────── UC-english ──────────────────────────╮
│  UC-english is original, german and french are dependent  │
╰───────────────────────────────────────────────────────────╯
-->
### Use Case 1: Generate a Laboratory Order Document

{% include img.html img="LabOrderWorkflow.svg" caption="Fig. 1: Laboratory Order and Testing Workflow" width="60%" %}

This implementation guide defines the structure and content of laboratory order documents using FHIR Bundle resources of type 'document'. The actual exchange mechanisms between placer (e.g., EMR systems) and filler (e.g., Laboratory Information Systems) are implementation-specific and depend on the local infrastructure and requirements. CH ORF defines the Submit Bundle [[CH ORF-1]](https://fhir.ch/ig/ch-orf/index.html#submit-bundle-ch-orf-1) transaction which could be used as an exchange mechanism.

#### Laboratory Order Document with Service Request

The customer (e.g. a doctor) requires various laboratory tests to supplement the diagnostic process. He creates an order document in his Electronic Medical Records (EMR) system, which contains the administrative data structured in accordance with the CH Core implementation guide and whose contents are available in the EMR. From the analyses provided by the LIS, he can select those that help him with his question, and he can also determine the samples corresponding to the analyses. For example, he wants to have glucose analyzed in the blood and cerebrospinal fluid. The laboratory system can store the information on the required specimen containers and any additives in the system. The pre-analytical conditions are specified.

He can also add information about the clinical context to the laboratory order: problem list, current medication list, questions about the prescribed analyses.

The order document is sent to the laboratory information system (LIS).

Example order document by ServiceRequest: [CH LAB-Order 0-best-practice](Bundle-0-best-practice-document-with-sr.html)

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

Example order document by form: [CH LAB-Order 1-tvt by Form](Bundle-1-tvt-document-with-sr-and-form.html)

### Use Case 2: Requesting additional tests of the same sample

It is not uncommon for the results of laboratory tests to lead to the request for additional tests on the same sample, or in-house laboratory analyses are supplemented by further tests that can only be carried out in an external laboratory.

In the 2-pertussis example, the in-house laboratory tests (automated blood count, CRP) are supplemented by a search for the Bordetella pertussis and parapertussis DNA in the throat swab, carried out by an external contract laboratory, in order to rule out whooping cough.

When the placer system request additional tests the existing samples, it copies the original ServiceRequest, adds the required laboratory tests and an Order Control Code 'RP', which means an order/service replace request. A special invariant rule 'sr-1' ensures that a reference to the original ServiceRequest is created.

The Order Control Codes can also be used to cancel, hold or release order requests on hold. In these cases as well the reference to the original order has to be created.

* The 2-pertussis-ServiceRequest is replaced by the
* 2-pertussis-ServiceRequestAddTest, which requests the examination of the throat swab searching for pertussis or parapertussis DNA

Example of referenced Service Request: [CH LAB-Order 2-pertussis](ServiceRequest-2-pertussis-ServiceRequest.html) The code in the element 'orderDetail' would be 'NW' for "New order/service", or the element could be completely omitted.

Example Service Replace Request: [CH LAB-Order 2-pertussis additional test](ServiceRequest-2-pertussis-ServiceRequestAddTest.html)
The Replace Request contains a Reference to the previous ServiceRequest and an element 'orderDetail', carries the order Control Code from the Code System v2-0119: RP for "Order/service replace request", 'CA' for "Cancel order/service request", 'HD' for "Hold order request", and 'RL' for "Release previous hold"

### Use Case 3: Collective request for toxicological testing (biological monitoring)

This use case corresponds to example 5-biol-monit. In order to assess the exposure of workers to chemical substances, measurements at the workplace are supplemented by occupational health checkups. The toxic substances themselves or their metabolites in serum or urine can be determined. The order is initiated by the occupational physician of the company or the insurance company. The problem of employee fluctuations must be kept in mind.

Examples are:

* Occupational medicine: ordering laboratory tests on a group of workers
  * ServiceRequest.subject refers to a group
  * ServiceRequest.specimen refers to several samples (0 .. *)
* Food industry: investigation on employee hygiene (e.g. salmonella contamination)
* Police investigations

Work lists are processed, which last over a longer period of time (days/weeks). Generally, specific examinations are requested on multiple patients.

Example order document with ServiceRequest: [CH LAB-Order 5-biol-monit](Bundle-5-biol-monit-document-with-sr.html).

Example order document with ServiceRequest and Form: [CH LAB-Order 5-biol-monit-form](Bundle-5-biol-monit-document-with-sr-and-form.html).

### Use Case 4: Suggestion of additional or alternative examinations by the laboratory physician (order recipient, receiver)

After the laboratory order has been received and processed, the situation may arise in which the laboratory physician wishes to make suggestions for additional or alternative examinations to the author of the order. He can use the received order document for this purpose, exchange the personal data of the sender and receiver through his information system, and send it back with the suggestions for further or alternative laboratory examinations.

* ServiceRequest.category: ProposalForAdditionalExam