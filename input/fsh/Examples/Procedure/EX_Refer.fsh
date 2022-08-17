Instance: procedure-refer-main
InstanceOf: Procedure
Title: "ตัวอย่าง Procedure: การส่งต่อผู้ป่วยไปยังสถานพยาบาลอื่น"
Description: "การส่งต่อผู้ป่วยไปยังสถานพยาบาลอื่น"
Usage: #example
* status = #completed
* code
  * coding[0] = $SCT#19712007 "Patient transfer, to another health care facility"
  * text = "Patient transfer, to another health care facility"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"


Instance: procedure-refer-breathing
InstanceOf: Procedure
Title: "ตัวอย่าง Procedure: การให้การดูแลหรือปฐมพยาบาลผู้ป่วยขณะส่งต่อผู้ป่วย - Breathing"
Description: "การให้การดูแลหรือปฐมพยาบาลผู้ป่วยขณะส่งต่อผู้ป่วย - Breathing"
Usage: #example
* partOf = Reference(Procedure/procedure-refer-main)
* status = #completed
* code
  * coding[0] = $CS_THCC_ReferCareProcedure#2 "Breathing"
  * text = "Breathing"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
