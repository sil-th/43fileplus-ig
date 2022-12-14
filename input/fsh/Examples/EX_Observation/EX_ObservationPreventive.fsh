Instance: observation-specialpp1
InstanceOf: $SD_Observation_SpecialPP
Title: "ตัวอย่าง Observation: บริการส่งเสริมสุขภาพป้องกันโรคเฉพาะ"
Description: "บริการส่งเสริมสุขภาพป้องกันโรคเฉพาะ"
Usage: #example
* status = #final
* category[hl7] = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $CS_THCC_SpecialPPService#1B162 "การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีอาการซึมเศร้าชัดเจนพบว่าผลปกติ (0 - 4 คะแนน)"
  * text = "การประเมินความเครียดด้วยแบบคัดกรอง ST5 ในกลุ่มที่มีอาการซึมเศร้าชัดเจนพบว่าผลปกติ (0 - 4 คะแนน)"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2022-04-10T12:30:02+07:00"

