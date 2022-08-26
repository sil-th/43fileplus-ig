Instance: observation-functional-test1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การประเมินความบกพร่อง"
Description: "การประเมินความบกพร่อง"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#survey "Survey"
  * text = "Survey"
* code
  * coding[0] = $CS_THCC_FunctionalTest#01 "Barthel ADL Index"
  * text = "Barthel ADL Index"
* subject = Reference(Patient/patient-patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* effectiveDateTime = "2022-01-25T12:30:02+07:00"
* valueInteger = 20


Instance: observation-functional-conclusion1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ภาวะพึ่งพิงของผู้สูงอายุ"
Description: "ภาวะพึ่งพิงของผู้สูงอายุ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#survey "Survey"
  * text = "Survey"
* code
  * coding[0] = $LNC#75276-6 "Functional status [Interpretation]"
  * text = "Functional status Imp"
* subject = Reference(Patient/patient-patient3)
  * insert GeneralReference($ID_ThaiCid, "2650591524440", "นาง สมปอง ใจดี")
* effectiveDateTime = "2022-01-25T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_FunctionalConclusion#1 "ไม่พึ่งพิง"
  * text = "ไม่พึ่งพิง"