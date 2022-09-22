Profile: MophPcObservationChildNewTeeth
Parent: $SD_Observation_ChildBase
Id: mophpc-observation-child-new-teeth
Title: "MoPH43p Observation: Child-New Teeth"
Description: "จำนวนฟันขึ้นใหม่ (ซี่)"
* ^url = $SD_Observation_ChildNewTeeth
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7] = $CS_HL7_ObservationCat#exam
* code.coding[code43Plus]
  * system 1..1 MS
  * system = $CS_Meta_MiscObsType (exactly)
  * code 1..1 MS
  * code = #002 (exactly)
* value[x] only integer
