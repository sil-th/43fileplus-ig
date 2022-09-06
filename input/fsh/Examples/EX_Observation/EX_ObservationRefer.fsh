Instance: observation-refer-demo1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ตัวอย่างการตรวจประเมินทางคลินิก ในแฟ้ม CLINICAL_REFER"
Description: " ตัวอย่างการตรวจประเมินทางคลินิก ในแฟ้ม CLINICAL_REFER"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * text = "รหัสและชื่อการตรวจประเมินทางคลินิก"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* valueQuantity = 80 'mg' "mg"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note
  * text = "คำอธิบายผลการตรวจประเมินทางคลินิก"

Instance: observation-refer-lab1
InstanceOf: Observation
Title: "ตัวอย่าง Observation: ตัวอย่างข้อมูลการตรวจทางห้องปฏิบัติการ ในแฟ้ม INVESTIGATION_REFER"
Description: "ตัวอย่างข้อมูลการตรวจทางห้องปฏิบัติการ ในแฟ้ม INVESTIGATION_REFER"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * text = "รหัสและชื่อการตรวจทางห้องปฏิบัติการหรือตรวจวินิจฉัย"
* subject = Reference(Patient/patient-patient4) "นาง สมควร ใจดี"
* effectiveDateTime = "2021-03-21T12:30:02+07:00"
* issued = "2021-03-21T12:30:02+07:00"
* valueString = "ผลการตรวจทางห้องปฏิบัติการหรือตรวจวินิจฉัย"
* interpretation = $CS_HL7_ObsInterpret#N "Normal"
* note
  * text = "คำอธิบายผลการตรวจประเมินทางคลินิก"
