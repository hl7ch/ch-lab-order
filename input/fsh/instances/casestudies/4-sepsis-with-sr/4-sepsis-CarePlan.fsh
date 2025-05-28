Instance: 4-sepsis-CarePlan
InstanceOf: CarePlan
Description: "Care plan for Sara Speckmann with sepsis, including care team and goals. The 4-sepsis Task is based on this CarePlan."
Usage: #example
* contained[0] = careteam
* contained[+] = goal
* contained[+] = 4-sepsis-fever-with-chills
* contained[+] = 4-sepsis-general-health-poor
* contained[+] = 4-sepsis-ServiceRequest
* status = #completed
* intent = #plan
* description = "Care plan for Sara Speckmann with sepsis, including care team and goals. The 4-sepsis Task is based on this CarePlan."
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"
* period.start = "2013-04-14"
* period.end = "2013-04-21"
* careTeam = Reference(careteam)
// * addresses.reference = "Fever with chills, General health poor"
* addresses[0] = Reference(4-sepsis-fever-with-chills) "Fever with chills"
* addresses[1] = Reference(4-sepsis-general-health-poor) "General health poor"

// * activity[0].outcomeCodeableConcept.coding.system = "http://snomed.info/sct"
* goal = Reference(goal)
* activity.reference = Reference(4-sepsis-ServiceRequest)

Instance: careteam
InstanceOf: CareTeam
Usage: #inline
* participant[0].role = $sct#309395003 "Hospital specialist (occupation)"
* participant[=].member = Reference(HansHauserKantonsspital) "Hans Hauser Kantonsspital"
* participant[+].role = $sct#61246008 "Laboratory medicine specialist (occupation)"
* participant[=].member = Reference(PractitionerRole/EvaErlenmeyerLaborPipette) "Eva Erlenmeyer Labor-Pipette"

Instance: goal
InstanceOf: Goal
Usage: #inline
* lifecycleStatus = #active
* description.text = "Look for identity and susceptibility of pathogens in the blood culture and urine sample"
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"

Instance: 4-sepsis-fever-with-chills
InstanceOf: Condition
Usage: #inline
* category = $condition-category#problem-list-item
* code = $sct#274640006 "Fever with chills (finding)"
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"

Instance: 4-sepsis-general-health-poor
InstanceOf: Condition
Usage: #inline
* category = $condition-category#problem-list-item
* code = $sct#135818000 "General health poor (finding)"
* subject = Reference(Patient/SaraSpeckmann) "Sara Speckmann"