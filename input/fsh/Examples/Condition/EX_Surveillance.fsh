Instance: condition-surveillance1
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยแรกรับ สำหรับการรับบริการ Surveillance"
Description: "การวินิจฉัยแรกรับ สำหรับการรับบริการ Surveillance"
Usage: #example
* extension[0]
  * url = $EX_HL7_ConditionDueTo
  * valueCodeableConcept[0] = $CS_THCC_DiseaseCause#225 "อื่น ๆ"
* clinicalStatus = $CS_HL7_ConditionStatus#active
* verificationStatus = $CS_HL7_ConditionVerification#unconfirmed
* category.coding = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#20927009 "Dengue hemorrhagic fever"
  * coding[+] = $ICD10#A97.2 "Severe Dengue"
  * text = "Dengue hemorrhagic fever"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* recordedDate = "2022-01-01T12:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"



Instance: condition-surveillance2
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยล่าสุด สำหรับการรับบริการ Surveillance"
Description: "การวินิจฉัยล่าสุด สำหรับการรับบริการ Surveillance"
Usage: #example
* extension[0]
  * url = $EX_HL7_ConditionDueTo
  * valueCodeableConcept[0] = $CS_THCC_DiseaseCause#225 "อื่น ๆ"
* extension[+]
  * url = $EX_HL7_ConditionDueTo
  * valueCodeableConcept[+] = $CS_THCC_CausativeAgent#0309 "Unknown"
* extension[+]
  * url = $EX_HL7_ConditinAssertedDate
  * valueDateTime = "2021-12-31T14:30:02+07:00"
* clinicalStatus = $CS_HL7_ConditionStatus#active
* verificationStatus = $CS_HL7_ConditionVerification#confirmed
* category.coding = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#20927009 "Dengue hemorrhagic fever"
  * coding[+] = $ICD10#A97.2 "Severe Dengue"
  * text = "Dengue hemorrhagic fever"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* onsetDateTime = "2021-12-30T14:30:02+07:00"
* recordedDate = "2022-01-01T14:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"