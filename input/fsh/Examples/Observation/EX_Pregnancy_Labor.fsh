Instance: observation-labor-gravida1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ครรภ์ที่ - Labor"
Description: "ครรภ์ที่ - Labor"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 2


Instance: observation-labor-lmp1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันแรกของการมีประจำเดือนครั้งสุดท้าย"
Description: "วันแรกของการมีประจำเดือนครั้งสุดท้าย"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#8665-2 "Last menstrual period start date"
  * text = "Last menstrual period start date"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-03-01"



Instance: observation-labor-edc1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: TEMP"
Description: "TEMP"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#93857-1 "Date and time of obstetric delivery"
  * text = "Date and time of obstetric delivery"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-12-01"


Instance: observation-labor-date-time1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: วันคลอด / วันสิ้นสุดการตั้งครรภ์"
Description: "วันคลอด / วันสิ้นสุดการตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#21112-8 "Birth date"
  * text = "Birth date"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2021-12-01T12:30:02+07:00"


Instance: observation-labor-live-birth1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: จำนวนเกิดมีชีพ"
Description: "จำนวนเกิดมีชีพ"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#11636-8 "[#] Births.live"
  * text = "[#] Births.live"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 1


Instance: observation-labor-stillborn1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: จำนวนตายคลอด"
Description: "จำนวนตายคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[0] = $LNC#57062-2 "[#] Births.stillborn"
  * text = "[#] Births.stillborn"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0