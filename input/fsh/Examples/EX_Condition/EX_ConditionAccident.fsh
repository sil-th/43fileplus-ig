Instance: condition-accident1
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยแรกรับ สำหรับการรับบริการแผนกฉุกเฉิน"
Description: "การวินิจฉัยแรกรับ สำหรับการรับบริการแผนกฉุกเฉิน"
Usage: #example
* extension[0]
  * url = $EX_HL7_ConditionDueTo
  * valueCodeableConcept[+] = $CS_THCC_AccidentCauseGroup#01 "Transport accidents"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#53627009 "Closed fracture of radius AND ulna"
  * coding[+] = $ICD10#S52.7 "Multiple fractures of forearm"
  * text = "Closed fracture of radius AND ulna"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* onsetDateTime = "2022-03-01T14:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* note
  * text = "ข้อความอธิบายรายละเอียดอุบัติเหตุ"