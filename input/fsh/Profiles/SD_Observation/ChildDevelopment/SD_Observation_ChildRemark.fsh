Profile: MophPcObservationChildRemark
Parent: $SD_Observation_ChildBase
Id: mophpc-observation-child-remark
Title: "MoPH-PC Observation: Child-Remark"
Description: "หมายเหตุเพิ่มเติมในการตรวจเด็ก"
* ^url = $SD_Observation_ChildRemark
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $LNC (exactly)
  * code 1..1 MS
  * code = #34109-9 (exactly)
* value[x] only string