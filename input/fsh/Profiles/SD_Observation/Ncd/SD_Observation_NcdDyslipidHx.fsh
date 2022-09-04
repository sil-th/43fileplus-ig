Profile: Moph43pObservationNcdDyslipidHx
Parent: $SD_Observation_NcdBase
Id: moph43p-observation-ncd-dyslipid-hx
Title: "MoPH43p Observation: NCD Dyslipidemia Hx"
Description: "ประวัติไขมันในเลือดสูง"
* ^url = $SD_Observation_NcdDyslipidHx
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $SCT#161450003 (exactly) //History of raised blood lipids 
* value[x] only CodeableConcept
* valueCodeableConcept.coding from $VS_HL7_YesNo (extensible)
* valueCodeableConcept.coding.system = $CS_HL7_YesNo (exactly)