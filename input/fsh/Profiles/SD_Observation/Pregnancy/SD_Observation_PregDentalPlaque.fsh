Profile: Moph43pObservationPregDentalPlaque
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-dental-plaque
Title: "MoPH43p Observation: Pregnancy-DentalPlaque"
Description: "การพบหินปูน"
* ^url = $SD_Observation_PregDentalPlaque
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #34016-6 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)

