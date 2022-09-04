Profile: Moph43pObservationPregBreastfeeding
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-breastfeeding
Title: "MoPH43p Observation: Pregnancy-Breastfeeding"
Description: "น้ำนม Postnatal"
* ^url = $SD_Observation_PregBreastfeeding
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#5804-0 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_PCU_PostnatalBreastfeeding (extensible)
* valueCodeableConcept.coding.system = $CS_PCU_PostnatalBreastfeeding (exactly)
