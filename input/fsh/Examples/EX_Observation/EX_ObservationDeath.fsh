Instance: observation-death-location
InstanceOf: $SD_Observation_DeathLocation
Title: "ตัวอย่าง Observation: สถานที่ตาย"
Description: "ผลการบันทึกสถานที่ตาย"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code = $LNC#58332-8 "Location of death"
  * text = "สถานที่ตาย"
* subject = Reference(Patient/patient-patient3)
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_DeathLocType#1 "ในสถานพยาบาล"
  * text = "ในสถานพยาบาล"



Instance: observation-death-pregnancy
InstanceOf: $SD_Observation_DeathPregnancy
Title: "ตัวอย่าง Observation: สภาวะการตั้งครรภ์และการคลอด ขณะเสียชีวิต"
Description: "สภาวะการตั้งครรภ์และการคลอด ขณะเสียชีวิต"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code = $LNC#69442-2 "Timing of recent pregnancy in relation to death"
  * text = "สภาวะการตั้งครรภ์และการคลอด ขณะเสียชีวิต"
* subject = Reference(Patient/patient-patient3)
* effectiveDateTime = "2022-01-01T12:30:02+07:00"
* valueCodeableConcept
  * coding[0] = $CS_THCC_DeathPregnancy#3 "ไม่ตั้งครรภ์"
  * text = "ไม่ตั้งครรภ์"