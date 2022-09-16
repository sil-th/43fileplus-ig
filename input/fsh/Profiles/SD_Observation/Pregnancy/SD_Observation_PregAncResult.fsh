Profile: Moph43pObservationPregAncResult
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-anc-result
Title: "MoPH43p Observation: Pregnancy-Anc Result"
Description: "ผลการตรวจ ANC"
* ^url = $SD_Observation_PregAncResult
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $SCT (exactly)
  * code 1..1 MS
  * code = #313199003 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_HL7_ObsInterpret (extensible)
* valueCodeableConcept.coding[hl7].system = $CS_HL7_ObsInterpret (exactly)