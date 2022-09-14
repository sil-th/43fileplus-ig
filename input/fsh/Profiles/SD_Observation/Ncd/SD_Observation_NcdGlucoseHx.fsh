Profile: Moph43pObservationNcdGlucoseHx
Parent: $SD_Observation_NcdBase
Id: moph43p-observation-ncd-glucose-hx
Title: "MoPH43p Observation: NCD High Glucose Hx"
Description: "ประวัติน้ำตาลในเลือดสูง"
* ^url = $SD_Observation_NcdGlucoseHx
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_MiscObsType#001 (exactly)
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)