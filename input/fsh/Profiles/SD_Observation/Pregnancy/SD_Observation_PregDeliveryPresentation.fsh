Profile: MophPcObservationPregDeliveryPresentation
Parent: $SD_Observation_PregnancyBase
Id: mophpc-observation-preg-delivery-presentation
Title: "MoPH-PC Observation: Pregnancy-Delivery Presentation"
Description: "ท่าเด็กตอนคลอด"
* ^url = $SD_Observation_PregDeliveryPresentation
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #57075-4 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator[0].type = #value
* valueCodeableConcept.coding ^slicing.discriminator[=].path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    hl7 0..1 MS
* valueCodeableConcept.coding[hl7] from $VS_PCU_LaborPresentation (extensible)
* valueCodeableConcept.coding[hl7].system = $CS_PCU_LaborPresentation (exactly)