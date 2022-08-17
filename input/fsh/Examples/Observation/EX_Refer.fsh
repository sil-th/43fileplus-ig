Instance: observation-refer-demo1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: การตรวจประเมินทางคลินิก"
Description: "การตรวจประเมินทางคลินิก"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * text = "รหัสและชื่อการตรวจประเมินทางคลินิก"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueString = "ผลการตรวจประเมินทางคลินิกที่มีค่าเป็นตัวเลข"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note
  * text = "คำอธิบายผลการตรวจประเมินทางคลินิก"
