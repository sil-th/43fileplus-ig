Instance: medicationrequest-opd-amoxicillin
InstanceOf: MedicationRequest
Title: "ตัวอย่าง MedicationRequest: การสั่งยา Amoxicillin หลังการรับบริการ OPD"
Description: "แสดงการสั่งยา Amoxicillin หลังการรับบริการ OPD"
Usage: #example
* extension[0]
  * url = $EX_TH_MedicationRequestSource
  * valueCodeableConcept = $CS_THCC_MedicationSource#1 "ยาที่ให้จาก รพ.ต้นทาง"
* extension[+]
  * url = $EX_TH_MedicationRequestOutNLEM
  * valueCodeableConcept = $CS_THCC_MedOutNLEM#EA "เกิดอาการไม่พึงประสงค์จากยาหรือแพ้ยาที่สามารถใช้ได้ในบัญชียาหลักแห่งชาติ"
* extension[+]
  * url = $EX_TH_MedicationRequestApprovedNo
  * valueString = "ApprovedNumber"
* identifier
  * use = #usual
  * system = $ID_LO_Drug
  * value = "XXXX"
* status = #completed
* intent = #order
* category = $CS_THCC_MedicationCategory#2 "ใช้ที่บ้าน"
* medicationReference = Reference(Medication/medication-opd-amoxicillin) "Amoxicillin 500 mg"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* encounter = Reference(Encounter/encounter-opd2)
* authoredOn = "2022-01-01T12:30:02+07:00"
* requester = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* reasonCode = $SCT#43878008 "Streptococcal pharyngitis"
* note.text = "หมายเหตุเกี่ยวกับการใช้ยา (ถ้ามี)"
* dosageInstruction
  * text = "Take one tablet three times a day"
  * timing
    * code.text = "TID"
  * route = $SCT#26643006 "Oral route"