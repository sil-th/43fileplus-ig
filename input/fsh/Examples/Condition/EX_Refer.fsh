Instance: condition-refer1
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยแรกรับ สำหรับการรับบริการแผนกฉุกเฉิน"
Description: "การวินิจฉัยแรกรับ สำหรับการรับบริการแผนกฉุกเฉิน"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#266257000 "Transient ischemic attack"
  * coding[+] = $ICD10#G45.9 "Transient cerebral ischaemic attack, unspecified"
  * text = "Transient ischemic attack"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* onsetDateTime = "2021-03-31T10:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"



Instance: condition-refer2
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยสุดท้าย สำหรับการรับบริการแผนกฉุกเฉิน"
Description: "การวินิจฉัยสุดท้าย สำหรับการรับบริการแผนกฉุกเฉิน"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#266257000 "Transient ischemic attack"
  * coding[+] = $ICD10#G45.9 "Transient cerebral ischaemic attack, unspecified"
  * text = "Transient ischemic attack"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* onsetDateTime = "2021-03-31T10:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"



Instance: condition-refer3
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยแรกรับ ณ โรงพยาบาลตติยภูมิที่รับการส่งต่อ"
Description: "การวินิจฉัยแรกรับ ณ โรงพยาบาลตติยภูมิที่รับการส่งต่อ"
Usage: #example
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#266257000 "Transient ischemic attack"
  * coding[+] = $ICD10#G45.9 "Transient cerebral ischaemic attack, unspecified"
  * text = "Transient ischemic attack"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* onsetDateTime = "2021-03-31T14:30:02+07:00"
* recorder = Reference(Practitioner/practitioner-doctor2) "พญ. สมศรี จริงใจ"
