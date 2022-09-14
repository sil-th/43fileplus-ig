Instance: procedure-refer-main
InstanceOf: $SD_Procedure_Refer
Title: "ตัวอย่าง Procedure: การส่งต่อผู้ป่วยไปยังสถานพยาบาลอื่น"
Description: "การส่งต่อผู้ป่วยไปยังสถานพยาบาลอื่น"
Usage: #example
* status = #completed
* code
  * coding[0] = $SCT#19712007 "Patient transfer, to another health care facility"
  * text = "Patient transfer, to another health care facility"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"


Instance: procedure-refer-breathing
InstanceOf: $SD_Procedure_Refer
Title: "ตัวอย่าง Procedure: การให้การดูแลหรือปฐมพยาบาลผู้ป่วยขณะส่งต่อผู้ป่วย - Breathing"
Description: "การให้การดูแลหรือปฐมพยาบาลผู้ป่วยขณะส่งต่อผู้ป่วย - Breathing"
Usage: #example
* partOf = Reference(Procedure/procedure-refer-main)
* status = #completed
* code
  * coding[0] = $CS_43File_ReferCareProcedure#2 "Breathing"
  * text = "Breathing"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"


Instance: procedure-refer-demo1
InstanceOf: $SD_Procedure_Refer
Title: "ตัวอย่าง Procedure: การได้รับการทำหัตถการและผ่าตัด"
Description: "การได้รับการทำหัตถการและผ่าตัด"
Usage: #example
* status = #completed
* code
  * coding[0] = $SCT#80146002 "Appendectomy"
  * text = "Appendectomy"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* performedPeriod
  * start = "2021-03-31T12:30:02+07:00"
  * end = "2021-03-31T16:30:02+07:00"
* performer[0]
  * function = $CS_THCC_LaborPerformerRole#1 "แพทย์"
  * actor = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* outcome.text = "คำอธิบายผลการทำหัตถการหรือการรักษา"
* note.text = "คำอธิบายการทำหัตถการหรือการรักษา"