Instance: procedure-vitamin-d-serum
InstanceOf: ActivityDefinition
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/order-catalog/StructureDefinition/LabProcedureDefinition"
* language = #fr-FR
* text.status = #additional
* text.div = "<div xml:lang=\"fr-FR\" xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"fr-FR\">\n            <p><b>Additional Narrative in French language | Vue narrative en français : </b></p>\n            <p>Procédure de dosage de la vitamine D dans le sang</p>\n            <p>Elément clinique pertinent requis en entrée : ObservationDefinition/input-observation-context-for-vitamin-d</p>\n            <p>Résultat en sortie : ObservationDefinition/example-observation-vitamin-d</p>\n        </div>"
* url = "http://fhir.ch/ig/ch-lab-order/ValueSet/procedure-vitamin-d-serum"
* version = "0.1.0"
* name = "VitaminDProcedure"
* title = "Procédure - dosage vitamine D - sang"
* status = #draft
* experimental = true
* date = "2020-02-19T14:00:00+02:00"
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/orders"
* description = "Procédure de dosage de la vitamine D dans le sang"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001
* effectivePeriod.start = "2020-04-01"
* effectivePeriod.end = "2022-12-25"

* topic[0] = $lnc#18719-5 "Chemistry studies (set)"  // LOINC Specialty code
* topic[+] = $sct#275711006 "Serum chemistry test (procedure)" // SNOMED CT Specialty

* kind = #ServiceRequest
* code = $lnc#14635-7 "25-hydroxyvitamin D3 [Moles/volume] in Serum or Plasma"
* priority = #routine
* timingDuration = 120 'mn' "minutes"
* observationRequirement = Reference(ObservationDefinition/input-observation-context-for-vitamin-d)
* observationResultRequirement = Reference(ObservationDefinition/example-observation-vitamin-d)