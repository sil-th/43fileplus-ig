Profile: Moph43pObservationChildRemark
Parent: $SD_Observation_ChildBase
Id: moph43p-observation-child-remark
Title: "MoPH43p Observation: Child-Remark"
Description: "หมายเหตุเพิ่มเติมในการตรวจเด็ก"
* ^url = $SD_Observation_ChildRemark
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $LNC#34109-9 (exactly)
* value[x] only string