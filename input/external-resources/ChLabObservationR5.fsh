Profile: ChLabObservation
Parent: ChLabObservationR4R5
Id: observation-r4-r5
Title: "Observation with R5 Features in R4"
Description: "Extends R4 Observation to include R5 elements such as 'focus' and 'triggeredBy'."
* ^meta.lastUpdated = "2023-03-26T15:21:02.749+11:00"
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-category"
* ^extension[=].valueString = "Clinical.Diagnostics"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* ^extension[=].valueCode = #normative
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-normative-version"
* ^extension[=].valueCode = #4.0.0
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 5
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-security-category"
* ^extension[=].valueCode = #patient
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #oo
* ^experimental = false
* ^date = "2023-03-26T15:21:02+11:00"
* ^publisher = "Health Level Seven International (Orders and Observations)"
* ^contact[0].telecom.system = #url
* ^contact[=].telecom.value = "http://hl7.org/fhir"
* ^contact[+].telecom.system = #url
* ^contact[=].telecom.value = "http://www.hl7.org/Special/committees/orders/index.cfm"
* ^jurisdiction.coding.system = "http://unstats.un.org/unsd/methods/m49/m49.htm"
* ^jurisdiction.coding.code = #001
* ^jurisdiction.coding.display = "World"
* ^purpose = "Observations are a key aspect of healthcare.  This resource is used to capture those that do not require more sophisticated mechanisms."
* obeys obs-7 and obs-8 and obs-6
* . ^short = "Measurements and simple assertions"
* . ^definition = "Measurements and simple assertions made about a patient, device or other subject."
* . ^comment = "Used for simple observations such as device measurements, laboratory atomic results, vital signs, height, weight, smoking status, comments, etc.  Other resources are used to provide context for observations such as laboratory reports, etc."
* . ^alias[0] = "Vital Signs"
* . ^alias[+] = "Measurement"
* . ^alias[+] = "Results"
* . ^alias[+] = "Tests"
* . ^mustSupport = false
* . ^isModifier = false
* identifier 0..* SU Identifier "Business Identifier for observation" "A unique identifier assigned to this observation."
* identifier ^requirements = "Allows observations to be distinguished and referenced."
* identifier ^mustSupport = false
* identifier ^isModifier = false
* instantiates[x] 0..1 SU TU Reference(http://hl7.org/fhir/StructureDefinition/ObservationDefinition) or Canonical(http://hl7.org/fhir/StructureDefinition/ObservationDefinition) "Instantiates FHIR ObservationDefinition" "The reference to a FHIR ObservationDefinition resource that provides the definition that is adhered to in whole or in part by this Observation instance."
* instantiates[x] ^comment = "ObservationDefinition can be referenced by its canonical url using instantiatesCanonical, or by a name or an identifier using the appropriate sub-elements of instantiatesReference."
* instantiates[x] ^mustSupport = false
* instantiates[x] ^isModifier = false
* basedOn 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/CarePlan or http://hl7.org/fhir/StructureDefinition/DeviceRequest or http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation or http://hl7.org/fhir/StructureDefinition/MedicationRequest or http://hl7.org/fhir/StructureDefinition/NutritionOrder or http://hl7.org/fhir/StructureDefinition/ServiceRequest) "Fulfills plan, proposal or order" "A plan, proposal or order that is fulfilled in whole or in part by this event.  For example, a MedicationRequest may require a patient to have laboratory test performed before  it is dispensed."
* basedOn ^requirements = "Allows tracing of authorization for the event and tracking whether proposals/recommendations were acted upon."
* basedOn ^alias[0] = "Fulfills"
* basedOn ^mustSupport = false
* basedOn ^isModifier = false
* triggeredBy 0..* TU BackboneElement "Triggering observation(s)" "Identifies the observation(s) that triggered the performance of this observation."
* triggeredBy ^mustSupport = false
* triggeredBy ^isModifier = false
* triggeredBy ^isSummary = false
* triggeredBy.observation 1..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Observation) "Triggering observation" "Reference to the triggering observation."
* triggeredBy.observation ^mustSupport = false
* triggeredBy.observation ^isModifier = false
* triggeredBy.type 1..1 SU code "reflex | repeat | re-run" "The type of trigger.\nReflex | Repeat | Re-run."
* triggeredBy.type from http://hl7.org/fhir/ValueSet/observation-triggeredbytype|5.0.0 (required)
* triggeredBy.type ^mustSupport = false
* triggeredBy.type ^isModifier = false
* triggeredBy.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* triggeredBy.type ^binding.extension[=].valueString = "TriggeredByType"
* triggeredBy.type ^binding.description = "The type of TriggeredBy Observation."
* triggeredBy.reason 0..1 string "Reason that the observation was triggered" "Provides the reason why this observation was performed as a result of the observation(s) referenced."
* triggeredBy.reason ^mustSupport = false
* triggeredBy.reason ^isModifier = false
* triggeredBy.reason ^isSummary = false
* partOf 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/MedicationAdministration or http://hl7.org/fhir/StructureDefinition/MedicationDispense or http://hl7.org/fhir/StructureDefinition/MedicationStatement or http://hl7.org/fhir/StructureDefinition/Procedure or http://hl7.org/fhir/StructureDefinition/Immunization or http://hl7.org/fhir/StructureDefinition/ImagingStudy or http://hl7.org/fhir/StructureDefinition/GenomicStudy) "Part of referenced event" "A larger event of which this particular Observation is a component or step.  For example,  an observation as part of a procedure."
* partOf ^comment = "To link an Observation to an Encounter use `encounter`.  See the  [Notes](observation.html#obsgrouping) below for guidance on referencing another Observation."
* partOf ^alias[0] = "Container"
* partOf ^mustSupport = false
* partOf ^isModifier = false
* status 1..1 ?! SU code "registered | preliminary | final | amended +" "The status of the result value."
* status from http://hl7.org/fhir/ValueSet/observation-status|5.0.0 (required)
* status ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-display-hint"
* status ^extension[=].valueString = "default: final"
* status ^comment = "This element is labeled as a modifier because the status contains codes that mark the resource as not currently valid."
* status ^requirements = "Need to track the status of individual results. Some results are finalized before the whole report is finalized."
* status ^mustSupport = false
* status ^isModifierReason = "This element is labeled as a modifier because it is a status element that contains status entered-in-error which means that the resource should not be treated as valid"
* status ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* status ^binding.extension[=].valueString = "ObservationStatus"
* status ^binding.description = "Codes providing the status of an observation."
* category 0..* CodeableConcept "Classification of  type of observation" "A code that classifies the general type of observation being made."
* category from http://hl7.org/fhir/ValueSet/observation-category (preferred)
* category ^comment = "In addition to the required category valueset, this element allows various categorization schemes based on the owner’s definition of the category and effectively multiple categories can be used at once.  The level of granularity is defined by the category concepts in the value set."
* category ^requirements = "Used for filtering what observations are retrieved and displayed."
* category ^mustSupport = false
* category ^isModifier = false
* category ^isSummary = false
* category ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* category ^binding.extension[=].valueString = "ObservationCategory"
* category ^binding.description = "Codes for high level observation categories."
* code 1..1 SU CodeableConcept "Type of observation (code / type)" "Describes what was observed. Sometimes this is called the observation \"name\"."
* code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* code ^comment = "*All* code-value and, if present, component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation."
* code ^requirements = "Knowing what kind of observation is being made is essential to understanding the observation."
* code ^alias[0] = "Name"
* code ^condition[0] = "obs-7"
* code ^mustSupport = false
* code ^isModifier = false
* code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* code ^binding.extension[=].valueString = "ObservationCode"
* code ^binding.description = "Codes identifying names of simple observations."
* subject 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/Group or http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/Location or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/Procedure or http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/Medication or http://hl7.org/fhir/StructureDefinition/Substance or http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct or http://hl7.org/fhir/StructureDefinition/NutritionProduct) "Who and/or what the observation is about" "The patient, or group of patients, location, device, organization, procedure or practitioner this observation is about and into whose or what record the observation is placed. If the actual focus of the observation is different from the subject (or a sample of, part, or region of the subject), the `focus` element or the `code` itself specifies the actual focus of the observation."
* subject ^comment = "One would expect this element to be a cardinality of 1..1. The only circumstance in which the subject can be missing is when the observation is made by a device that does not know the patient. In this case, the observation SHALL be matched to a patient through some context/channel matching technique, and at this point, the observation should be updated. The subject of an Observation may in some cases be a procedure.  This supports the regulatory inspection use case where observations are captured during inspections of a procedure that is being performed (independent of any particular patient or whether patient related at all)."
* subject ^requirements = "Observations have no value if you don't know who or what they're about."
* subject ^mustSupport = false
* subject ^isModifier = false
* focus 0..* SU TU Reference(http://hl7.org/fhir/StructureDefinition/Resource) "What the observation is about, when it is not about the subject of record" "The actual focus of an observation when it is not the patient of record representing something or someone associated with the patient such as a spouse, parent, fetus, or donor. For example, fetus observations in a mother's record.  The focus of an observation could also be an existing condition,  an intervention, the subject's diet,  another observation of the subject,  or a body structure such as tumor or implanted device.   An example use case would be using the Observation resource to capture whether the mother is trained to change her child's tracheostomy tube. In this example, the child is the patient of record and the mother is the focus."
* focus ^comment = "Typically, an observation is made about the subject - a patient, or group of patients, location, or device - and the distinction between the subject and what is directly measured for an observation is specified in the observation code itself ( e.g., \"Blood Glucose\") and does not need to be represented separately using this element.  Use `specimen` if a reference to a specimen is required.  If a code is required instead of a resource use either  `bodysite` for bodysites or the standard extension [http://hl7.org/fhir/StructureDefinition/observation-focusCode](http://hl7.org/fhir/extensions/StructureDefinition-observation-focusCode.html)."
* focus ^mustSupport = false
* focus ^isModifier = false
* encounter 0..1 SU Reference(http://hl7.org/fhir/StructureDefinition/Encounter) "Healthcare event during which this observation is made" "The healthcare event  (e.g. a patient and healthcare provider interaction) during which this observation is made."
* encounter ^comment = "This will typically be the encounter the event occurred within, but some events may be initiated prior to or after the official completion of an encounter but still be tied to the context of the encounter (e.g. pre-admission laboratory tests)."
* encounter ^requirements = "For some observations it may be important to know the link between an observation and a particular encounter."
* encounter ^alias[0] = "Context"
* encounter ^mustSupport = false
* encounter ^isModifier = false
* effective[x] 0..1 SU dateTime or Period or Timing or instant "Clinically relevant time/time-period for observation" "The time or time-period the observed value is asserted as being true. For biological subjects - e.g. human patients - this is usually called the \"physiologically relevant time\". This is usually either the time of the procedure or of specimen collection, but very often the source of the date/time is not known, only the date/time itself."
* effective[x] ^comment = "At least a date should be present unless this observation is a historical report.  For recording imprecise or \"fuzzy\" times (For example, a blood glucose measurement taken \"after breakfast\") use the [Timing](datatypes.html#timing) datatype which allow the measurement to be tied to regular life events."
* effective[x] ^requirements = "Knowing when an observation was deemed true is important to its relevance as well as determining trends."
* effective[x] ^alias[0] = "Occurrence"
* effective[x] ^mustSupport = false
* effective[x] ^isModifier = false
* issued 0..1 SU instant "Date/Time this version was made available" "The date and time this version of the observation was made available to providers, typically after the results have been reviewed and verified."
* issued ^comment = "For Observations that don't require review and verification, it may be the same as the [`lastUpdated` ](resource-definitions.html#Meta.lastUpdated) time of the resource itself.  For Observations that do require review and verification for certain updates, it might not be the same as the `lastUpdated` time of the resource itself due to a non-clinically significant update that doesn't require the new version to be reviewed and verified again."
* issued ^mustSupport = false
* issued ^isModifier = false
* performer 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/Practitioner or http://hl7.org/fhir/StructureDefinition/PractitionerRole or http://hl7.org/fhir/StructureDefinition/Organization or http://hl7.org/fhir/StructureDefinition/CareTeam or http://hl7.org/fhir/StructureDefinition/Patient or http://hl7.org/fhir/StructureDefinition/RelatedPerson) "Who is responsible for the observation" "Who was responsible for asserting the observed value as \"true\"."
* performer ^requirements = "May give a degree of confidence in the observation and also indicates where follow-up questions should be directed."
* performer ^mustSupport = false
* performer ^isModifier = false
* value[x] 0..1 SU Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) "Actual result" "The information determined as a result of making the observation, if the information has a simple value."
* value[x] ^comment = "- An observation may have:\n  1.  a single value here\n  1.  both a value and a set of related or component values\n  1.  only a set of related or component values.\n-  If a value is present, the datatype for this element should be determined by the `code`.\n-  *CodeableConcept* with just a text would be used instead of a string if the field was usually coded, or if the type associated with the `code` defines a coded value.\n-  *Attachment* is used if the observation result value is a binary file such as an image.  If the observation result value is derived from the binary file (for example 'X' detected and here is the the proof in this image), the binary file may be directly represented using *DocumentReference* and referenced by `derivedFrom`.\n- The usage of valueReference is restricted to the MolecularSequence resource when used as a definitional resource, not as a patient-specific finding. .\n- For additional guidance, see the [Notes section](observation.html#notes) below."
* value[x] ^requirements = "An observation exists to have a value, though it might not if it is in error, or if it represents a group of observations."
* value[x] ^condition[0] = "obs-7"
* value[x] ^condition[+] = "obs-6"
* value[x] ^mustSupport = false
* value[x] ^isModifier = false
* dataAbsentReason 0..1 CodeableConcept "Why the result is missing" "Provides a reason why the expected value in the element Observation.value[x] is missing."
* dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (extensible)
* dataAbsentReason ^comment = "Null or exceptional values can be represented two ways in FHIR Observations.  One way is to simply include them in the value set and represent the exceptions in the value.  For example, measurement values for a serology test could be  \"detected\", \"not detected\", \"inconclusive\", or  \"specimen unsatisfactory\".   \n\nThe alternate way is to use the value element for actual observations and use the explicit dataAbsentReason element to record exceptional values.  For example, the dataAbsentReason code \"error\" could be used when the measurement was not completed. Note that an observation may only be reported if there are values to report. For example differential cell counts values may be reported only when > 0.  Because of these options, use-case agreements are required to interpret general observations for null or exceptional values."
* dataAbsentReason ^requirements = "For many results it is necessary to handle exceptional values in measurements."
* dataAbsentReason ^condition[0] = "obs-6"
* dataAbsentReason ^mustSupport = false
* dataAbsentReason ^isModifier = false
* dataAbsentReason ^isSummary = false
* dataAbsentReason ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* dataAbsentReason ^binding.extension[=].valueString = "ObservationValueAbsentReason"
* dataAbsentReason ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* dataAbsentReason ^binding.extension[=].valueBoolean = true
* dataAbsentReason ^binding.description = "Codes specifying why the result (`Observation.value[x]`) is missing."
* interpretation 0..* CodeableConcept "High, low, normal, etc" "A categorical assessment of an observation value.  For example, high, low, normal."
* interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* interpretation ^comment = "Historically used for laboratory results (known as 'abnormal flag' ),  its use extends to other use cases where coded interpretations  are relevant.  Often reported as one or more simple compact codes this element is often placed adjacent to the result value in reports and flow sheets to signal the meaning/normalcy status of the result."
* interpretation ^requirements = "For some results, particularly numeric results, an interpretation is necessary to fully understand the significance of a result."
* interpretation ^alias[0] = "Abnormal Flag"
* interpretation ^mustSupport = false
* interpretation ^isModifier = false
* interpretation ^isSummary = false
* interpretation ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* interpretation ^binding.extension[=].valueString = "ObservationInterpretation"
* interpretation ^binding.description = "Codes identifying interpretations of observations."
* note 0..* Annotation "Comments about the observation" "Comments about the observation or the results."
* note ^comment = "May include general statements about the observation, or statements about significant, unexpected or unreliable results values, or information about its source when relevant to its interpretation."
* note ^requirements = "Need to be able to provide free text additional information."
* note ^mustSupport = false
* note ^isModifier = false
* note ^isSummary = false
* bodySite 0..1 CodeableConcept "Observed body part" "Indicates the site on the subject's body where the observation was made (i.e. the target site)."
* bodySite from http://hl7.org/fhir/ValueSet/body-site (example)
* bodySite ^comment = "Only used if not implicit in code found in Observation.code.  In many systems, this may be represented as a related observation instead of an inline component."
* bodySite ^condition[0] = "obs-8"
* bodySite ^mustSupport = false
* bodySite ^isModifier = false
* bodySite ^isSummary = false
* bodySite ^binding.extension[0].url = "http://hl7.org/fhir/tools/StructureDefinition/binding-definition"
* bodySite ^binding.extension[=].valueString = "Codes describing anatomical locations. May include laterality."
* bodySite ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* bodySite ^binding.extension[=].valueString = "BodySite"
* bodySite ^binding.description = "SNOMED CT Body site concepts"
* bodyStructure 0..1 TU Reference(http://hl7.org/fhir/StructureDefinition/BodyStructure) "Observed body structure" "Indicates the body structure on the subject's body where the observation was made (i.e. the target site)."
* bodyStructure ^comment = "Only used if not implicit in code found in Observation.code or bodySite is used. In many systems, this may be represented as a related observation instead of an inline component."
* bodyStructure ^condition[0] = "obs-8"
* bodyStructure ^mustSupport = false
* bodyStructure ^isModifier = false
* bodyStructure ^isSummary = false
* method 0..1 CodeableConcept "How it was done" "Indicates the mechanism used to perform the observation."
* method from http://hl7.org/fhir/ValueSet/observation-methods (example)
* method ^comment = "Only used if not implicit in code for Observation.code."
* method ^requirements = "In some cases, method can impact results and is thus used for determining whether results can be compared or determining significance of results."
* method ^mustSupport = false
* method ^isModifier = false
* method ^isSummary = false
* method ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* method ^binding.extension[=].valueString = "ObservationMethod"
* method ^binding.description = "Methods for simple observations."
* specimen 0..1 Reference(http://hl7.org/fhir/StructureDefinition/Specimen or http://hl7.org/fhir/StructureDefinition/Group) "Specimen used for this observation" "The specimen that was used when this observation was made."
* specimen obeys obs-9
* specimen ^comment = "Should only be used if not implicit in code found in `Observation.code`.  Observations are not made on specimens themselves; they are made on a subject, but in many cases by the means of a specimen. Note that although specimens are often involved, they are not always tracked and reported explicitly. Also note that observation resources may be used in contexts that track the specimen explicitly (e.g. Diagnostic Report)."
* specimen ^mustSupport = false
* specimen ^isModifier = false
* specimen ^isSummary = false
* device 0..1 Reference(http://hl7.org/fhir/StructureDefinition/Device or http://hl7.org/fhir/StructureDefinition/DeviceMetric) "A reference to the device that generates the measurements or the device settings for the device" "A reference to the device that generates the measurements or the device settings for the device."
* device ^comment = "Note that this is not meant to represent a device involved in the transmission of the result, e.g., a gateway.  Such devices may be documented using the Provenance resource where relevant."
* device ^mustSupport = false
* device ^isModifier = false
* device ^isSummary = false
* referenceRange 0..* BackboneElement "Provides guide for interpretation" "Guidance on how to interpret the value by comparison to a normal or recommended range.  Multiple reference ranges are interpreted as an \"OR\".   In other words, to represent two distinct target populations, two `referenceRange` elements would be used."
* referenceRange obeys obs-3
* referenceRange ^comment = "Most observations only have one generic reference range. Systems MAY choose to restrict to only supplying the relevant reference range based on knowledge about the patient (e.g., specific to the patient's age, gender, weight and other factors), but this might not be possible or appropriate. Whenever more than one reference range is supplied, the differences between them SHOULD be provided in the reference range and/or age properties."
* referenceRange ^requirements = "Knowing what values are considered \"normal\" can help evaluate the significance of a particular result. Need to be able to provide multiple reference ranges for different contexts."
* referenceRange ^mustSupport = false
* referenceRange ^isModifier = false
* referenceRange ^isSummary = false
* referenceRange.low 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "Low Range, if relevant" "The value of the low bound of the reference range.  The low bound of the reference range endpoint is inclusive of the value (e.g.  reference range is >=5 - <=9). If the low bound is omitted,  it is assumed to be meaningless (e.g. reference range is <=2.3)."
* referenceRange.low ^condition[0] = "obs-3"
* referenceRange.low ^mustSupport = false
* referenceRange.low ^isModifier = false
* referenceRange.low ^isSummary = false
* referenceRange.high 0..1 http://hl7.org/fhir/StructureDefinition/SimpleQuantity "High Range, if relevant" "The value of the high bound of the reference range.  The high bound of the reference range endpoint is inclusive of the value (e.g.  reference range is >=5 - <=9). If the high bound is omitted,  it is assumed to be meaningless (e.g. reference range is >= 2.3)."
* referenceRange.high ^condition[0] = "obs-3"
* referenceRange.high ^mustSupport = false
* referenceRange.high ^isModifier = false
* referenceRange.high ^isSummary = false
* referenceRange.normalValue 0..1 TU CodeableConcept "Normal value, if relevant" "The value of the normal value of the reference range."
* referenceRange.normalValue from http://hl7.org/fhir/ValueSet/observation-referencerange-normalvalue (extensible)
* referenceRange.normalValue ^mustSupport = false
* referenceRange.normalValue ^isModifier = false
* referenceRange.normalValue ^isSummary = false
* referenceRange.normalValue ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* referenceRange.normalValue ^binding.extension[=].valueString = "ObservationReferenceRangeNormalValue"
* referenceRange.normalValue ^binding.description = "Codes identifying the normal value of the observation."
* referenceRange.type 0..1 TU CodeableConcept "Reference range qualifier" "Codes to indicate the what part of the targeted reference population it applies to. For example, the normal or therapeutic range."
* referenceRange.type from http://hl7.org/fhir/ValueSet/referencerange-meaning (preferred)
* referenceRange.type ^comment = "This SHOULD be populated if there is more than one range.  If this element is not present then the normal range is assumed."
* referenceRange.type ^requirements = "Need to be able to say what kind of reference range this is - normal, recommended, therapeutic, etc.,  - for proper interpretation."
* referenceRange.type ^mustSupport = false
* referenceRange.type ^isModifier = false
* referenceRange.type ^isSummary = false
* referenceRange.type ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* referenceRange.type ^binding.extension[=].valueString = "ObservationRangeMeaning"
* referenceRange.type ^binding.description = "Code for the meaning of a reference range."
* referenceRange.appliesTo 0..* CodeableConcept "Reference range population" "Codes to indicate the target population this reference range applies to.  For example, a reference range may be based on the normal population or a particular sex or race.  Multiple `appliesTo`  are interpreted as an \"AND\" of the target populations.  For example, to represent a target population of African American females, both a code of female and a code for African American would be used."
* referenceRange.appliesTo from http://hl7.org/fhir/ValueSet/referencerange-appliesto (example)
* referenceRange.appliesTo ^comment = "This SHOULD be populated if there is more than one range.  If this element is not present then the normal population is assumed."
* referenceRange.appliesTo ^requirements = "Need to be able to identify the target population for proper interpretation."
* referenceRange.appliesTo ^mustSupport = false
* referenceRange.appliesTo ^isModifier = false
* referenceRange.appliesTo ^isSummary = false
* referenceRange.appliesTo ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* referenceRange.appliesTo ^binding.extension[=].valueString = "ObservationRangeType"
* referenceRange.appliesTo ^binding.description = "Codes identifying the population the reference range applies to."
* referenceRange.age 0..1 Range "Applicable age range, if relevant" "The age at which this reference range is applicable. This is a neonatal age (e.g. number of weeks at term) if the meaning says so."
* referenceRange.age ^requirements = "Some analytes vary greatly over age."
* referenceRange.age ^mustSupport = false
* referenceRange.age ^isModifier = false
* referenceRange.age ^isSummary = false
* referenceRange.text 0..1 markdown "Text based reference range in an observation" "Text based reference range in an observation which may be used when a quantitative range is not appropriate for an observation.  An example would be a reference value of \"Negative\" or a list or table of \"normals\"."
* referenceRange.text ^condition[0] = "obs-3"
* referenceRange.text ^mustSupport = false
* referenceRange.text ^isModifier = false
* referenceRange.text ^isSummary = false
* hasMember 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/Observation or http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse or http://hl7.org/fhir/StructureDefinition/MolecularSequence) "Related resource that belongs to the Observation group" "This observation is a group observation (e.g. a battery, a panel of tests, a set of vital sign measurements) that includes the target as a member of the group."
* hasMember ^comment = "When using this element, an observation will typically have either a value or a set of related resources, although both may be present in some cases.  For a discussion on the ways Observations can assembled in groups together, see [Notes](observation.html#obsgrouping) below.  Note that a system may calculate results from [QuestionnaireResponse](questionnaireresponse.html)  into a final score and represent the score as an Observation."
* hasMember ^mustSupport = false
* hasMember ^isModifier = false
* derivedFrom 0..* SU Reference(http://hl7.org/fhir/StructureDefinition/DocumentReference or http://hl7.org/fhir/StructureDefinition/ImagingStudy or http://hl7.org/fhir/StructureDefinition/ImagingSelection or http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse or http://hl7.org/fhir/StructureDefinition/Observation or http://hl7.org/fhir/StructureDefinition/MolecularSequence or http://hl7.org/fhir/StructureDefinition/GenomicStudy) "Related resource from which the observation is made" "The target resource that represents a measurement from which this observation value is derived. For example, a calculated anion gap or a fetal measurement based on an ultrasound image."
* derivedFrom ^comment = "All the reference choices that are listed in this element can represent clinical observations and other measurements that may be the source for a derived value.  The most common reference will be another Observation.  For a discussion on the ways Observations can assembled in groups together, see [Notes](observation.html#obsgrouping) below."
* derivedFrom ^mustSupport = false
* derivedFrom ^isModifier = false
* component 0..* SU BackboneElement "Component results" "Some observations have multiple component observations.  These component observations are expressed as separate code value pairs that share the same attributes.  Examples include systolic and diastolic component observations for blood pressure measurement and multiple component observations for genetics observations."
* component ^comment = "For a discussion on the ways Observations can be assembled in groups together see [Notes](observation.html#notes) below."
* component ^requirements = "Component observations share the same attributes in the Observation resource as the primary observation and are always treated a part of a single observation (they are not separable).   However, the reference range for the primary observation value is not inherited by the component values and is required when appropriate for each component observation."
* component ^condition[0] = "obs-7"
* component ^mustSupport = false
* component ^isModifier = false
* component.code 1..1 SU CodeableConcept "Type of component observation (code / type)" "Describes what was observed. Sometimes this is called the observation \"code\"."
* component.code from http://hl7.org/fhir/ValueSet/observation-codes (example)
* component.code ^comment = "*All* code-value and  component.code-component.value pairs need to be taken into account to correctly understand the meaning of the observation."
* component.code ^requirements = "Knowing what kind of observation is being made is essential to understanding the observation."
* component.code ^condition[0] = "obs-7"
* component.code ^mustSupport = false
* component.code ^isModifier = false
* component.code ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component.code ^binding.extension[=].valueString = "ObservationCode"
* component.code ^binding.description = "Codes identifying names of simple observations."
* component.value[x] 0..1 SU Quantity or CodeableConcept or string or boolean or integer or Range or Ratio or SampledData or time or dateTime or Period or Attachment or Reference(http://hl7.org/fhir/StructureDefinition/MolecularSequence) "Actual component result" "The information determined as a result of making the observation, if the information has a simple value."
* component.value[x] ^comment = "Used when observation has a set of component observations:\n-  An observation may have both a value (e.g. an  Apgar score) and component observations (the observations from which the Apgar score was derived). \n-  If a value is present, the datatype for this element should be determined by the `code`.\n-  *CodeableConcept* with just a text would be used instead of a string if the field was usually coded, or if the type associated with the `code` defines a coded value.\n-  *Attachment* is used if the observation result value is a binary file such as an image.  If the observation result value is derived from the binary file (for example 'X' detected and here is the the proof in this image), the binary file may be directly represented using *DocumentReference* and referenced by `derivedFrom`.\n- If a value is present, the datatype for this element should be determined by the `code`.\n-  *CodeableConcept* with just a text would be used instead of a string if the field was usually coded, or if the type associated with the `code` defines a coded value.\n-  *Attachment* is used if the observation result value is a binary file such as an image.  If the observation result value is derived from the binary file (for example 'X' detected and here is the the proof in this image), the binary file may be directly represented using *DocumentReference* and referenced by `derivedFrom`.\n- The usage of valueReference is restricted to the MolecularSequence resource when used as a definitional resource, not as a patient-specific finding. .\n- For additional guidance, see the [Notes section](observation.html#notes) below."
* component.value[x] ^requirements = "An observation exists to have a value, though it might not if it is in error, or if it represents a group of observations."
* component.value[x] ^mustSupport = false
* component.value[x] ^isModifier = false
* component.dataAbsentReason 0..1 CodeableConcept "Why the component result is missing" "Provides a reason why the expected value in the element Observation.component.value[x] is missing."
* component.dataAbsentReason from http://hl7.org/fhir/ValueSet/data-absent-reason (extensible)
* component.dataAbsentReason ^comment = "\"Null\" or exceptional values can be represented two ways in FHIR Observations.  One way is to simply include them in the value set and represent the exceptions in the value.  For example, measurement values for a serology test could be  \"detected\", \"not detected\", \"inconclusive\", or  \"test not done\". \n\nThe alternate way is to use the value element for actual observations and use the explicit dataAbsentReason element to record exceptional values.  For example, the dataAbsentReason code \"error\" could be used when the measurement was not completed.  Because of these options, use-case agreements are required to interpret general observations for exceptional values."
* component.dataAbsentReason ^requirements = "For many results it is necessary to handle exceptional values in measurements."
* component.dataAbsentReason ^mustSupport = false
* component.dataAbsentReason ^isModifier = false
* component.dataAbsentReason ^isSummary = false
* component.dataAbsentReason ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component.dataAbsentReason ^binding.extension[=].valueString = "ObservationValueAbsentReason"
* component.dataAbsentReason ^binding.extension[+].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-isCommonBinding"
* component.dataAbsentReason ^binding.extension[=].valueBoolean = true
* component.dataAbsentReason ^binding.description = "Codes specifying why the result (`Observation.value[x]`) is missing."
* component.interpretation 0..* CodeableConcept "High, low, normal, etc" "A categorical assessment of an observation value.  For example, high, low, normal."
* component.interpretation from http://hl7.org/fhir/ValueSet/observation-interpretation (extensible)
* component.interpretation ^comment = "Historically used for laboratory results (known as 'abnormal flag' ),  its use extends to other use cases where coded interpretations  are relevant.  Often reported as one or more simple compact codes this element is often placed adjacent to the result value in reports and flow sheets to signal the meaning/normalcy status of the result."
* component.interpretation ^requirements = "For some results, particularly numeric results, an interpretation is necessary to fully understand the significance of a result."
* component.interpretation ^alias[0] = "Abnormal Flag"
* component.interpretation ^mustSupport = false
* component.interpretation ^isModifier = false
* component.interpretation ^isSummary = false
* component.interpretation ^binding.extension[0].url = "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName"
* component.interpretation ^binding.extension[=].valueString = "ObservationInterpretation"
* component.interpretation ^binding.description = "Codes identifying interpretations of observations."
* component.referenceRange 0..* contentReference #Observation.referenceRange "Provides guide for interpretation of component result" "Guidance on how to interpret the value by comparison to a normal or recommended range."
* component.referenceRange ^comment = "Most observations only have one generic reference range. Systems MAY choose to restrict to only supplying the relevant reference range based on knowledge about the patient (e.g., specific to the patient's age, gender, weight and other factors), but this might not be possible or appropriate. Whenever more than one reference range is supplied, the differences between them SHOULD be provided in the reference range and/or age properties."
* component.referenceRange ^requirements = "Knowing what values are considered \"normal\" can help evaluate the significance of a particular result. Need to be able to provide multiple reference ranges for different contexts."
* component.referenceRange ^mustSupport = false
* component.referenceRange ^isModifier = false
* component.referenceRange ^isSummary = false

Invariant: obs-7
Description: "If Observation.component.code is the same as Observation.code, then Observation.value SHALL NOT be present (the Observation.component.value[x] holds the value)."
* severity = #error
* expression = "value.empty() or component.code.where(coding.intersect(%resource.code.coding).exists()).empty()"

Invariant: obs-8
Description: "bodyStructure SHALL only be present if Observation.bodySite is not present"
* severity = #error
* expression = "bodySite.exists() implies bodyStructure.empty()"

Invariant: obs-6
Description: "dataAbsentReason SHALL only be present if Observation.value[x] is not present"
* severity = #error
* expression = "dataAbsentReason.empty() or value.empty()"

Invariant: obs-9
Description: "If Observation.specimen is a reference to Group, the group can only have specimens"
* severity = #error
* expression = "(reference.resolve().exists() and reference.resolve() is Group) implies reference.resolve().member.entity.resolve().all($this is Specimen)"

Invariant: obs-3
Description: "Must have at least a low or a high or text"
* severity = #error
* expression = "low.exists() or high.exists() or text.exists()"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: Observation
Target: "http://hl7.org/fhir/workflow"
* -> "Event"
* identifier -> "Event.identifier"
* instantiates[x] -> "Event.instantiatesCanonical"
* basedOn -> "Event.basedOn"
* partOf -> "Event.partOf"
* status -> "Event.status"
* code -> "Event.code"
* subject -> "Event.subject"
* encounter -> "Event.encounter"
* effective[x] -> "Event.occurrence[x]"
* performer -> "Event.performer.actor"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: Observation
Target: "http://hl7.org/fhir/fivews"
* -> "clinical.diagnostics"
* identifier -> "FiveWs.identifier"
* status -> "FiveWs.status"
* category -> "FiveWs.class"
* code -> "FiveWs.what[x]"
* subject -> "FiveWs.subject[x]"
* focus -> "FiveWs.subject[x]"
* encounter -> "FiveWs.context"
* effective[x] -> "FiveWs.done[x]"
* issued -> "FiveWs.recorded"
* performer -> "FiveWs.actor"
* component.code -> "FiveWs.what[x]"

Mapping: sct-concept
Id: sct-concept
Title: "SNOMED CT Concept Domain Binding"
Source: Observation
Target: "http://snomed.info/conceptdomain"
* -> "< 363787002 |Observable entity|"
* status -> "< 445584004 |Report by finality status|"
* code -> "< 363787002 |Observable entity| OR < 386053000 |Evaluation procedure|"
* value[x] -> "< 441742003 |Evaluation finding|"
* interpretation -> "< 260245000 |Findings values|"
* bodySite -> "< 123037004 |Body structure|"
* specimen -> "< 123038009 |Specimen|"
* device -> "< 49062001 |Device|"
* referenceRange.type -> "< 260245000 |Findings values| OR  \r< 365860008 |General clinical state finding| \rOR \r< 250171008 |Clinical history or observation findings| OR  \r< 415229000 |Racial group| OR \r< 365400002 |Finding of puberty stage| OR\r< 443938003 |Procedure carried out on subject|"
* referenceRange.appliesTo -> "< 260245000 |Findings values| OR  \r< 365860008 |General clinical state finding| \rOR \r< 250171008 |Clinical history or observation findings| OR  \r< 415229000 |Racial group| OR \r< 365400002 |Finding of puberty stage| OR\r< 443938003 |Procedure carried out on subject|"
* component.code -> "< 363787002 |Observable entity| OR \r< 386053000 |Evaluation procedure|"
* component.value[x] -> "363714003 |Interprets| < 441742003 |Evaluation finding|"
* component.interpretation -> "< 260245000 |Findings values|"

Mapping: v2
Id: v2
Title: "HL7 V2 Mapping"
Source: Observation
Target: "http://hl7.org/v2"
* -> "OBX"
* identifier -> "OBX-21  For OBX segments from systems without OBX-21 support a combination of ORC/OBR and OBX must be negotiated between trading partners to uniquely identify the OBX segment. Depending on how V2 has been implemented each of these may be an option: 1) OBR-3 + OBX-3 + OBX-4 or 2) OBR-3 + OBR-4 + OBX-3 + OBX-4 or 3) some other way to uniquely ID the OBR/ORC + OBX-3 + OBX-4."
* basedOn -> "ORC"
* triggeredBy -> "ORC"
* partOf -> "Varies by domain"
* status -> "OBX-11"
* code -> "OBX-3"
* subject -> "PID-3"
* focus -> "OBX-3"
* encounter -> "PV1"
* effective[x] -> "OBX-14, and/or OBX-19 after v2.4  (depends on who observation made)"
* issued -> "OBR-22 (or MSH-7), or perhaps OBX-19 (depends on who observation made)"
* performer -> "OBX-15 / (Practitioner)  OBX-16,  PRT-5:PRT-4='RO' /  (Device)  OBX-18 , PRT-10:PRT-4='EQUIP' / (Organization)  OBX-23,  PRT-8:PRT-4='PO'"
* value[x] -> "OBX-2, OBX-5, OBX-6"
* dataAbsentReason -> "N/A"
* interpretation -> "OBX-8"
* note -> "NTE-3 (partner NTE to OBX, or sometimes another (child?) OBX)"
* bodySite -> "OBX-20"
* method -> "OBX-17"
* specimen -> "SPM segment"
* device -> "OBX-17 / PRT -10"
* referenceRange -> "OBX-7"
* referenceRange.low -> "OBX-7"
* referenceRange.high -> "OBX-7"
* referenceRange.normalValue -> "OBX-7"
* referenceRange.type -> "OBX-10"
* referenceRange.appliesTo -> "OBX-10"
* referenceRange.text -> "OBX-7"
* hasMember -> "Relationships established by OBX-4 usage"
* derivedFrom -> "Relationships established by OBX-4 usage"
* component -> "containment by OBX-4?"
* component.code -> "OBX-3"
* component.value[x] -> "OBX-2, OBX-5, OBX-6"
* component.dataAbsentReason -> "N/A"
* component.interpretation -> "OBX-8"
* component.referenceRange -> "OBX-7"

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: Observation
Target: "http://hl7.org/v3"
* -> "Observation[classCode=OBS, moodCode=EVN]"
* identifier -> "id"
* instantiates[x] -> ".outboundRelationship[typeCode=DEFN].target"
* basedOn -> ".inboundRelationship[typeCode=COMP].source[moodCode=EVN]"
* triggeredBy -> ".inboundRelationship[typeCode=COMP].source[moodCode=EVN]"
* triggeredBy.observation -> "outBoundRelationship"
* triggeredBy.type -> "code"
* triggeredBy.reason -> "annotation"
* partOf -> ".outboundRelationship[typeCode=FLFS].target"
* status -> "status  Amended & Final are differentiated by whether it is the subject of a ControlAct event with a type of \"revise\""
* category -> ".outboundRelationship[typeCode=\"COMP].target[classCode=\"LIST\", moodCode=\"EVN\"].code"
* code -> "code"
* subject -> "participation[typeCode=RTGT]"
* focus -> "participation[typeCode=SBJ]"
* encounter -> "inboundRelationship[typeCode=COMP].source[classCode=ENC, moodCode=EVN]"
* effective[x] -> "effectiveTime"
* issued -> "participation[typeCode=AUT].time"
* performer -> "participation[typeCode=PRF]"
* value[x] -> "value"
* dataAbsentReason -> "value.nullFlavor"
* interpretation -> "interpretationCode"
* note -> "subjectOf.observationEvent[code=\"annotation\"].value"
* bodySite -> "targetSiteCode"
* bodyStructure -> "targetSiteCode"
* method -> "methodCode"
* specimen -> "participation[typeCode=SPC].specimen"
* device -> "participation[typeCode=DEV]"
* referenceRange -> "outboundRelationship[typeCode=REFV]/target[classCode=OBS, moodCode=EVN]"
* referenceRange.low -> "value:IVL_PQ.low"
* referenceRange.high -> "value:IVL_PQ.high"
* referenceRange.normalValue -> "value:IVL_PQ.normal"
* referenceRange.type -> "interpretationCode"
* referenceRange.appliesTo -> "interpretationCode"
* referenceRange.age -> "outboundRelationship[typeCode=PRCN].targetObservationCriterion[code=\"age\"].value"
* referenceRange.text -> "value:ST"
* hasMember -> "outBoundRelationship"
* derivedFrom -> ".targetObservation"
* component -> "outBoundRelationship[typeCode=COMP]"
* component.code -> "code"
* component.value[x] -> "value"
* component.dataAbsentReason -> "value.nullFlavor"
* component.interpretation -> "interpretationCode"
* component.referenceRange -> "outboundRelationship[typeCode=REFV]/target[classCode=OBS, moodCode=EVN]"

Mapping: sct-attr
Id: sct-attr
Title: "SNOMED CT Attribute Binding"
Source: Observation
Target: "http://snomed.org/attributebinding"
* code -> "116680003 |Is a|"
* value[x] -> "363714003 |Interprets|"
* interpretation -> "363713009 |Has interpretation|"
* bodySite -> "718497002 |Inherent location|"
* specimen -> "704319004 |Inherent in|"
* device -> "424226004 |Using device|"
* component.value[x] -> "363714003 |Interprets|"
* component.interpretation -> "363713009 |Has interpretation|"