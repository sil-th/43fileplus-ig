Instance: condition-pregnancy-outcome
InstanceOf: Condition
Title: "ตัวอย่าง Condition: ผลสิ้นสุดการตั้งครรภ์"
Description: "ผลสิ้นสุดการตั้งครรภ์"
Usage: #example
* clinicalStatus = $CS_HL7_ConditionStatus#active
* verificationStatus = $CS_HL7_ConditionVerification#confirmed
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#48782003 "Delivery normal"
  * coding[+] = $ICD10#O80.0 "Spontaneous vertex delivery"
  * text = "Delivery normal"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* recordedDate = "2022-01-21T12:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"