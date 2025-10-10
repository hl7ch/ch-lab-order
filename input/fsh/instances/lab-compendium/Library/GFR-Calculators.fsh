Instance: GFR-Calculators
InstanceOf: Library
Title: "GFR Calculators"
Description: "4 variable MDRD Study Equation, CKD-EPI Cystatin C Equation (eGFRcys2012), CKD-EPI Equation (eGFRcr2009),
CKD-EPI Creatinine-Cystatin C Equation(eGFRcr-cys2012), CKD-EPI Creatinine NO RACE Equation (eGFRcr2021), and
CKD-EPI Creatinine - Cystatin C NO RACE Equation (eGFRcr-cys2021) (with SI Units)
using standardized serum creatinine, age, race*, gender and serum cystatin C.
Also includes body surface area (BSA), GFR Not corrected to BSA of 1.73m2, Cockcroft-Gault Formula,
Total Body Water (TBW) (Watson), Body Mass Index (BMI), and the Tangri Kidney Failure prediction Model."
Usage: #example
* url = "http://fhir.ch/ig/ch-lab-order/Library/GFR-Calculators"
* identifier.use = #official
* identifier.value = "GFR-Calculators"
* version = "4.3.0"
* name = "GFR_Calculators"
* title = "GFR-Calculators"
* status = #active
* experimental = false
* type.coding.system = "http://terminology.hl7.org/CodeSystem/library-type"   
* type.coding.code = #logic-library
* type.coding.display = "Logic Library"
* date = "2016-07-08"
* description = "Model definition for the FHIR Model"
* approvalDate = "2025-03-02"
* lastReviewDate = "2025-03-02"
* topic.text = "FHIR"
* content.contentType = #application/xml
* content.url = "https://www.zkidney.com/mdrd-main"