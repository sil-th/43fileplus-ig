Profile: Moph43pObservationPregDeliveryPresentation
Parent: $SD_Observation_PregnancyBase
Id: moph43p-observation-preg-delivery-presentation
Title: "MoPH43p Observation: Pregnancy-Delivery Presentation"
Description: "ท่าเด็กตอนคลอด"
* ^url = $SD_Observation_PregDeliveryPresentation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#laboratory (exactly)
* code.coding[code43Plus] = $LNC#57075-4 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_PCU_LaborPresentation (extensible)
* valueCodeableConcept.coding.system = $CS_PCU_LaborPresentation (exactly)
