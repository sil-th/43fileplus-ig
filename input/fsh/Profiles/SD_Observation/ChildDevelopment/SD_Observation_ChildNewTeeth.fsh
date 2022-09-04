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

// Description: ""

// * status = #final
// * category = $CS_HL7_ObservationCat#exam "Exam"
//   * text = "Exam"
// * code
//   * coding[0] = $CS_Meta_MiscObsType#002 "จำนวนฟันขึ้นใหม่ (ซี่)"
//   * text = "จำนวนฟันขึ้นใหม่ (ซี่)"
// * subject = Reference(Patient/patient-patient7) "ด.ช. สมมิตร ใจดี"
// * effectiveDateTime = "2022-02-21T15:00:02+07:00"
// * valueInteger = 2 '{#}' "Number"
