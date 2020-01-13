# HL7 Swiss FHIR Implementation Guide for generic laboratory order forms

This is HL7 Swiss FHIR implementation guide.
The implementation guide is based on CH_ORF (v0.9.1 STU Draft)
Order & Referral by Form - Implementation Guide (CH:ORF) <http://fhir.ch/ig/ch-orf/index.html>

## Example resource and structure definition

* Franz Muster is an example of the patient **resource**: examples\patient\FranzMuster.xml
* The corresponding **structure definition** example is here: resources\structuredefinition\ch-name-patient.xml
* [TODO] Pipette Lab is an example of a Lab Organisation
* The corresponding **structure definition** example is here: resources\structuredefinition\ch-name-organisation.xml
* These two resources are referenced in resources\implementationguide\ch.fhir.ig.name.xml

## Swiss Laboratory professional societies

* FAMH --The medical Laboratories of Switzerland <https://www.famh.ch/>
* SULM SULM Swiss Union of Laboratory Medicine <https://sulm.ch/d/>
* SSAI Swiss Society for Allergologie and Immunology <https://ssai.ch/>
* SSCC Swiss Society for Clinical Chemistry <http://www.sscc.ch/>
* SGH-SSH Swiss Society of Hematologie <https://www.sgh-ssh.ch/>
* SGM-SSM Swiss Society for Microbiology <https://www.swissmicrobiology.ch/>

## Prerequisites

* Oracle JDK: <https://fedoraproject.org/wiki/JDK_on_Fedora>
* IG Publisher: <https://fhir.github.io/latest-ig-publisher/org.hl7.fhir.publisher.jar>

### Installation of JDK Oracle for Fedora 31

$ cat /etc/fedora-release   or $ cat /usr/lib/os-release
Fedora release 31 (Thirty One)

$ java -version
java version "1.8.0_231"
Java(TM) SE Runtime Environment (build 1.8.0_231-b11)
Java HotSpot(TM) 64-Bit Server VM (build 25.231-b11, mixed mode)

### IG Publisher

Look at <https://wiki.hl7.org/IG_Publisher_Documentation>
Running in workspace in command line mode:

$ java -jar org.hl7.fhir.publisher.jar -ig lab-order/lab-order.json

Checks folders, installs hl7.fhir.r4.core#4.0.4
