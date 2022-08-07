Instance: FunctionalEncounter
InstanceOf: Encounter
Title: "การตรวจประเมินความบกพร่องทางสุขภาพ"
Description: "การตรวจประเมินความบกพร่องทางสุขภาพ"
Usage: #example
* identifier[0]
  * use = #official
  * type = $CS_HL7_IdentifierType#VN "Visit number"
  * system = $ID_LO_VN
  * value = "65-XXXXXXX"
* status = #finished
* class = $CS_HL7_EncounterClass#AMB "ambulatory"
* period
  * start = "2022-01-25T12:30:02+07:00"
* subject = Reference(Patient/Patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* diagnosis
  * condition = Reference(Condition/DisabilityCondition1)
* serviceProvider = Reference(OrganizationMain)
  * insert GeneralReference($ID_Hcode, "XXXXX", "โรงพยาบาลตัวอย่าง")


Instance: FunctionalTest
InstanceOf: Observation
Title: "การประเมินความบกพร่อง"
Description: "การประเมินความบกพร่อง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#survey "Survey"
  * text = "Survey"
* code
  * coding[0] = $CS_THCC_FunctionalTest#01 "Barthel ADL Index"
  * text = "Barthel ADL Index"
* subject = Reference(Patient/Patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* effectiveDateTime = "2022-01-25T12:30:02+07:00"
* valueInteger = 20


Instance: FunctionalConclusion
InstanceOf: Observation
Title: "ภาวะพึ่งพิงของผู้สูงอายุ"
Description: "ภาวะพึ่งพิงของผู้สูงอายุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#survey "Survey"
  * text = "Survey"
* code
  * coding[0] = $LNC#75276-6 "Functional status [Interpretation]"
  * text = "Functional status Imp"
* subject = Reference(Patient/Patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* effectiveDateTime = "2022-01-25T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_FunctionalConclusion#1 "ไม่พึ่งพิง"
  * text = "ไม่พึ่งพิง"