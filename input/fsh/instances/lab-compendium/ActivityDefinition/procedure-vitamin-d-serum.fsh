Instance: procedure-vitamin-d-serum
InstanceOf: ActivityDefinition
Title: "CH LAB-Order Procedure Vit. D3"
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
// * language = #en-US
* text.status = #additional
* text.div = "<div xml:lang=\"de-CH\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"de-CH\">\n            <p><b>Additional Narrative in French language | Vue narrative en français : </b></p>\n            <p>Procedure 25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma</p>\n            <p>Elément clinique pertinent requis en entrée : ObservationDefinition/input-observation-context-for-vitamin-d</p>\n            <p>Résultat en sortie : ObservationDefinition/example-observation-vitamin-d</p>\n        </div>"
* url = "http://fhir.ch/ig/ch-lab-order/ActivityDefinition/procedure-vitamin-d-serum"
* version = "0.1.0"
* name = "VitaminDProcedure"
* title = "ActivityDefinition: Vit. D3"
* status = #active
* experimental = true
* date = "2020-02-19T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Procedure 25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#756
* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2022-12-25"

* topic[0] = $loinc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty

* kind = #ServiceRequest
* code = $loinc#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"
* priority = #routine
* timingDuration = 120 'mn' "minutes"
* observationRequirement = Reference(ObservationDefinition/input-observation-context-for-vitamin-d)
* observationResultRequirement = Reference(ObservationDefinition/example-observation-vitamin-d)