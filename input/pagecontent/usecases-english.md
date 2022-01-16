### Use Case 1: Lab Order in the conventional sense

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

Outside of this use case: the results are then reported back to the client.

### Use Case 2: Requesting additional examinations of the same sample

It is not uncommon for the results of laboratory tests to lead to the request for additional tests on the same sample. In the example 1-tvt, venous thrombophilia may be suspected, so that further laboratory tests can detect hereditary causes such as factor V Leiden mutation, prothrombin gene mutation, antithrombin deficiency, etc.

* Details of the requested service
  * ServiceRequest.category is RequestForAdditionalExam

### Use Case 3: Requesting existing lab results and images

Sometimes the physician also wants information about previous laboratory tests, e.g., to assess the prostate-specific antigen (PSA) trend.

* Details of the requested service
  * ServiceRequest.category is RequestForPrecedentReport or RequestForPrecedentReportAndImages, respectively.
  
### Use Case 4: Collective request for toxicological testing (biological monitoring)

This use case corresponds to example 5-biol-monit. In order to assess the exposure of workers to chemical substances, measurements at the workplace are supplemented by occupational health checkups. The toxic substances themselves or their metabolites in serum or urine can be determined. The order is initiated by the occupational physician of the company or the insurance company. The problem of employee fluctuations must be kept in mind.

Examples are:

* Occupational medicine: ordering laboratory tests on a group of workers
  * ServiceRequest.subject refers to a group
  * ServiceRequest.specimen refers to several samples (0 .. *)
* Food industry: investigation on employee hygiene (e.g. salmonella contamination)
* Police investigations

Example document: [5-biol-monit.xml](https://github.com/hl7ch/ch-lab-order/tree/master/input/examples/bundle/5-biol-monit.xml). Work lists are processed, which last over a longer period of time (days/weeks). Generally, specific examinations are requested on multiple patients.

### Use Case 5: Suggestion of additional or alternative examinations by the laboratory physician (order recipient, receiver)

After the laboratory order has been received and processed, the situation may arise in which the laboratory physician wishes to make suggestions for additional or alternative examinations to the author of the order. He can use the received order document for this purpose, exchange the personal data of the sender and receiver through his information system, and send it back with the suggestions for further or alternative laboratory examinations.

* ServiceRequest.category: ProposalForAdditionalExam

### Use Case 6: Findings and further data on the patient's health status

If this is of particular interest for the interpretation of the prescribed examination, it must be possible to include further data on the patient's state of health in the laboratory order. These are existing findings, medical reports and documents.

* ServiceRequest.reasonCode ServiceRequest.reasonReference

### Use Case 7: Information on the sample, preanalytics

For certain tests, the order and sample alone are not sufficient to determine the laboratory result. In such cases, observations on the sample collection must be supplied to the laboratory. An example of this is the determination of creatinine clearance in 24 h urine. For this purpose, the laboratory must know the amount of urine collected during a certain period of time. For this purpose, the ordering party provides the laboratory with the urine volume, as well as a sample of the urine and serum.

* Collected urine quantity: Specimen.collection.quantity.

* Start and end of urine collection: Specimen.collection.collected[collectedPeriod] - start - end

Another example is the Synacthen(ACTH) function test, where a basal Blood sample is collected in the morning fasting, followed immediately by the Synacthen injection, and a second Blood sample is collected an hour later.

* Basal serum sample fasting and administration of Synacthen(ACTH): Specimen.collection.collected[collectedDateTime], a second serum sample is collected 60 minutes later: Specimen.collection.collected[collectedDateTime]

### Use Case 8: Additional information on the context of the sample

For Blood gas analyses, the amount of oxygen administered to the patient is sometimes of concern

* ServiceRequest.supportingInfo, e.g. O2 4 liters/min.

### Use Case 9: Requesting monitoring examinations

Laboratories often offer the option of monitoring vital functions with appropriate medical devices, such as 24-hour Blood pressure monitoring, long-term ECG monitoring, or sleep medicine monitoring. For this purpose, the medical device is either sent to the client, or the patient picks it up from the lab himself.

* ServiceRequest.category RequestForMonit24hBP, RequestForMonit24hECG, RequestForMonit7dECG, RequestForMonitPO, RequestForMonitPG

### Use Case 10: Client selects analyses or analysis panels from a catalog

This use case is outside the scope of this implementation guide, although it is an essential part of any laboratory order. Clients need to be able to select the laboratory tests that the laboratory can actually provide. In addition, they need orientation in the multitude of possible examinations in the various divisions, as well as guidelines for the preanalytical procedure, guidelines for the correct vessels and transport media, for the minimum volumes of the samples, etc. A future version should offer this possibility.

For this purpose, the laboratories provide their customers with a catalog of those laboratory tests that they can make available. These can be single tests, such as serum sodium concentration, or a collection of tests, such as serum Na, K, and Cl. Often in the form of a laboratory manual, they make available the specifications for transport temperature, minimum sample volume, type of transport vessel, etc.

There will be different types of catalog entries (CatalogEntries) for this purpose: Single analyses, multiple analyses (panels), sample vessels, pre-analytical preconditions.
The single record of a laboratory analysis or a sample can be mapped as using the CatalogEntry resource. A composition with a Profile for Catalog is then the document that represents the catalog and represents the totality of the CatalogEntries it contains. It is important that the catalog always corresponds to the current conditions of the laboratory, and can, for example, immediately accommodate new laboratory tests or changed specifications of the preanalytics.

[StructureDefinition:Catalog] <http://hl7.org/fhir/catalog.html>
