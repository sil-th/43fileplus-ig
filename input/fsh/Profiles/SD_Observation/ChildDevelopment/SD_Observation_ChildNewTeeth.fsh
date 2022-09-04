Profile: Moph43pObservationChildNewTeeth
Parent: $SD_Observation_ChildBase
Id: moph43p-observation-child-new-teeth
Title: "MoPH43p Observation: Child-New Teeth"
Description: "จำนวนฟันขึ้นใหม่ (ซี่)"
* ^url = $SD_Observation_ChildNewTeeth
* ^status = #draft
* ^publisher = "Standards and Interoperability Lab - Thailand (SIL-TH)"
* ^jurisdiction = urn:iso:std:iso:3166#TH
* category[hl7].coding = $CS_HL7_ObservationCat#exam (exactly)
* code.coding[code43Plus] = $CS_Meta_MiscObsType#002 (exactly)
* value[x] only integer
