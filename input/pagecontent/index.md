### HL7 Swiss FHIR Implementation Guide for generic laboratory order forms

### Introduction

This is HL7 Swiss FHIR implementation guide for Laboratory Orders.
The implementation guide is based on CH_ORF (v0.9.1 STU Draft) Order & Referral by Form - Implementation Guide (CH:ORF) <http://fhir.ch/ig/ch-orf/index.html>, which refers on the CH Core Profiles of Switzerland and on CH-EPR Term.

It also refers to FHIR Implementation Guide for Structured Data Capture (SDC), for building the user friendly Questionnaires <http://build.fhir.org/ig/HL7/sdc/index.html>

#### Managment Summary

Customers of laboratories want to create their orders as efficiently and correctly as possible with the help of order forms. For this purpose, the laboratories provide forms that meet the following requirements:

1. the form should be able to be processed in their own informatics system (practice system, clinic system).

2. pre-filled fields with information about the client, the patient, the commissioned laboratory, should facilitate the order process.

3. a catalogue (StructureDefinition Catalog) with the references of the examinations (Reference CatalogEntry) offered by the laboratory should be available. In order for the customer to be able to orientate himself in the abundance of possible examinations, it should be possible to search within laboratory specialties (Laboratory Order Panels).

4. sample properties (specimen), type of sample, vessel, etc., preanalytical specifications must be specified, and the customer must be able to provide additional information (e.g. oxygen flow rate, time of last meal, 24 h urine volume,).

Efficient commissioning places high demands on the standardisation and interoperability of data processing. The information systems of the client and the laboratory are involved. Likewise, the documents created should contain the required metadata for the EPD (Electronic Patient Dossier), and at the same time they can provide the metadata for the resulting diagnosis report.

Data exchange with different information systems (practice, hospital, laboratory) quickly becomes confusing due to proprietary solutions (n:m cardinality). Therefore, the question arises whether a standardised order system is not the more favourable solution in the long run.

The proposed solution consists of independent modules and can therefore be quickly adapted to new requirements. Thus, the laboratories can adapt their order panels and examinations in their catalogues as needed, as well as the structured data entry for additional information.

#### Five Case studies with examples for the Order Document 

TODO: 