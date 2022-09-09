Instance: condition-ipd2-main
InstanceOf: Condition
Title: "ตัวอย่าง Condition: การวินิจฉัยโรคมะเร็ง ในบริการ IPD"
Description: "การวินิจฉัยโรคมะเร็ง ในบริการ IPD"
Usage: #example
* extension[0]
  * url = $EX_TH_ConditionChronicDischargeReason
  * valueCodeableConcept
    * coding[0] = $CS_THCC_ChronicDischargeReason#08 "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
    * text = "โรคอยู่ในภาวะสงบ(inactive)ไม่มีความจำเป็นต้องรักษา"
* category = $CS_HL7_ConditionCategory#encounter-diagnosis "Encounter Diagnosis"
* code
  * coding[0] = $SCT#254837009 "Breast cancer"
  * coding[+] = $ICD10#C50.9 "Malignant neoplasm: Breast, unspecified"
  * coding[+] = $ICDO3#8070/3 "Squamous cell carcinoma, NOS"
  * coding[+] = $CS_eClaim_CancerType#Br "Breast"
  * text = "Breast cancer"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* recordedDate = "2022-01-01T12:30:02+07:00"
* asserter = Reference(Practitioner/practitioner-doctor1) "พญ. สมหญิง จริงใจ"
* stage
  * summary = $CS_43Plus_CancerStaging#1 "ระยะที่ 1"
  * assessment = Reference(Observation/observation-cancer-grade)
    * display = "Grade I Well differentiated, Differentiated Nos"
* evidence
  * code = $CS_43Plus_CancerDxSource#7 "ผลการตรวจชิ้นเนื้อจากตำแหน่งที่สงสัยว่าเป็นมะเร็งในระยะแรก"
* note.text = "หมายเหตุประกอบการวินิจฉัยโรค"