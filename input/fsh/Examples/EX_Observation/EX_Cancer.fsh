Instance: observation-cancer-grade
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ระดับความรุนแรงของชิ้นเนื้อ"
Description: "ผลการบันทึกระดับความรุนแรงของชิ้นเนื้อ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code = $LNC#33732-9 "Histology grade [Identifier] in Cancer specimen"
  * text = "Histology grade [Identifier] in Cancer specimen"
* subject = Reference(Patient/patient-patient4)
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept
  * coding = $CS_43Plus_CancerGrade#1 "Grade I Well differentiated, Differentiated Nos"
  * text = "Grade I Well differentiated, Differentiated Nos"