Profile: Moph43pObservationNeonateAsphyxia
Parent: $SD_Observation_NeonateBase
Id: moph43p-observation-neonatal-asphyxia
Title: "MoPH43p Observation: Neonate Asphyxia"
Description: "ภาวะการณ์ขาดออกซิเจน"
* ^url = $SD_Observation_NeonateAsphyxia
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#413654009 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)