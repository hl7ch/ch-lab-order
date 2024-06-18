Instance: single-test-serum-venous-fasting

// ---- must be renamed with single-test-venous-fasting ----
// ---- single-test-capillary-fasting should be added ----
InstanceOf: SpecimenDefinition
Title: "SpecimenDefinition Venous Blood, 12 h fasting"
Description: "Venous Blood, 12 h fasting"
Usage: #example
* typeCollected = $sct#122555007 "Venous blood specimen"
* patientPreparation[0].text = "12 hour fasting"
* patientPreparation[+] = $sct#263678003 "At rest"
* timeAspect = "preferrably morning time"
* typeTested[0].type = $sct#119364003 "Serum specimen"
* typeTested[=].preference = #preferred
* typeTested[=].container.material = $sct#61088005 "plastic"
* typeTested[=].container.type = $sct#702281005 "Evacuated blood collection tube, thrombin/clot activator/gel separator"
* typeTested[=].container.cap = $container-cap#yellow "yellow cap"
* typeTested[=].container.minimumVolumeQuantity = 2 'mL' "ml"
* typeTested[=].handling[0].temperatureQualifier.text = "Ambient temperature"
* typeTested[=].handling[=].temperatureRange.low = 15 'Cel' "°C"
* typeTested[=].handling[=].temperatureRange.high = 25 'Cel' "°C"
* typeTested[=].handling[=].maxDuration = 60 'min' "minute"
* typeTested[=].handling[+].temperatureQualifier.text = "Refrigerated temperature"
* typeTested[=].handling[=].temperatureRange.low = 2 'Cel' "°C"
* typeTested[=].handling[=].temperatureRange.high = 8 'Cel' "°C"
* typeTested[=].handling[=].maxDuration = 8 'h' "hour"
* typeTested[+].type = $sct#119361006 "Plasma specimen"
* typeTested[=].preference = #alternate
* typeTested[=].container.material = $sct#32039001 "glass"
* typeTested[=].container.type = $sct#767390000 "Evacuated blood collection tube with heparin lithium and gel separator"
* typeTested[=].container.cap = $container-cap#green "green cap"
* typeTested[=].container.minimumVolumeQuantity = 2 'mL' "ml"
* typeTested[=].rejectionCriterion[0] = $rejection-criteria#insufficient "insufficient specimen volume"
* typeTested[=].rejectionCriterion[+] = $rejection-criteria#hemolized "hemolized specimen"
* typeTested[=].handling[0].temperatureQualifier.text = "Ambient temperature"
* typeTested[=].handling[=].temperatureRange.low = 15 'Cel' "°C"
* typeTested[=].handling[=].temperatureRange.high = 25 'Cel' "°C"
* typeTested[=].handling[=].maxDuration = 60 'min' "minute"
* typeTested[=].handling[+].temperatureQualifier.text = "Refrigerated temperature"
* typeTested[=].handling[=].temperatureRange.low = 2 'Cel' "°C"
* typeTested[=].handling[=].temperatureRange.high = 8 'Cel' "°C"
* typeTested[=].handling[=].maxDuration = 8 'h' "hour"