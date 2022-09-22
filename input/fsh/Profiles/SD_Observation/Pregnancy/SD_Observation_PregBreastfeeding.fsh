Profile: MophPcObservationPregBreastfeeding
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-breastfeeding
Title: "MoPH43p Observation: Pregnancy-Breastfeeding"
Description: "น้ำนม Postnatal"
* ^url = $SD_Observation_PregBreastfeeding
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #63895-7 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    pcu 0..1 MS
* valueCodeableConcept.coding[pcu] from $VS_PCU_PostnatalBreastfeeding (extensible)
* valueCodeableConcept.coding[pcu].system = $CS_PCU_PostnatalBreastfeeding (exactly)