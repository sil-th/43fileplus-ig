// * extension[+]
//   * url = $EX_TH_ConditionDisabilityType
//   * valueCodeableConcept
//     * coding[0] = $CS_THCC_DisabilityType#3 "ความพิการการเคลื่อนไหวหรือทางร่างกาย"
//     * text = "ความพิการการเคลื่อนไหวหรือทางร่างกาย"
Extension: EX_TH_ConditionDisabilityType
Id: ex-condition-disability-type
Title: "Condition: Disability Type"
Description: "ประเภทความพิการ"
* ^url = $EX_TH_ConditionDisabilityType
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Condition"
* . 0..*
* . ^short = "ประเภทความพิการ"
* . ^definition = "ประเภทความพิการ"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from $VS_THCC_DisabilityType (extensible)


// * extension[0]
//   * url = $EX_TH_ConditionIsChronic
//   * valueBoolean = true
Extension: EX_TH_ConditionIsChronic
Id: ex-condition-is-chronic
Title: "Condition: Is Chronic"
Description: "สภาวะการป่วยต่อเนื่อง"
* ^url = $EX_TH_ConditionIsChronic
* ^version = "4.3.0"
* ^status = #draft
* ^experimental = false
* ^date = "2022-08-23T07:06:13+11:00"
* ^publisher = "SIL-TH"
* ^context.type = #element
* ^context.expression = "Condition"
* . 0..*
* . ^short = "สภาวะการป่วยต่อเนื่อง"
* . ^definition = "สภาวะการป่วยต่อเนื่อง"
* value[x] 1..
* value[x] only boolean