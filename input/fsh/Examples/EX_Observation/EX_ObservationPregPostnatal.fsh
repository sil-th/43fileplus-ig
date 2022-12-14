Instance: observation-postnatal-gravida1
InstanceOf: $SD_Observation_PregGravida
Title: "ตัวอย่าง Observation: การตั้งครรภ์ครั้งที่"
Description: "การตั้งครรภ์ครั้งที่"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#11996-6 "[#] Pregnancies"
  * text = "[#] Pregnancies"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 2


Instance: observation-postnatal-birth-date1
InstanceOf: $SD_Observation_PregDeliveryDate
Title: "ตัวอย่าง Observation: วันเดือนปีที่คลอด / วันสิ้นสุดการตั้งครรภ์"
Description: "วันเดือนปีที่คลอด / วันสิ้นสุดการตั้งครรภ์"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#93857-1 "Date and time of obstetric delivery"
  * text = "Date and time of obstetric delivery"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueDateTime = "2022-01-21T14:30:02+07:00"


Instance: observation-postnatal-fundal-height1
InstanceOf: $SD_Observation_PregFundalHeight
Title: "ตัวอย่าง Observation: ระดับมดลูก Postnatal"
Description: "ระดับมดลูก Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#11881-0 "Uterus Fundal height Tape measure"
  * text = "Uterus Fundal height Tape measure"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueQuantity = 12 'cm' "cm"


Instance: observation-postnatal-lochia1
InstanceOf: $SD_Observation_PregLochia
Title: "ตัวอย่าง Observation: น้ำคาวปลา Postnatal"
Description: "น้ำคาวปลา Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#289576005 "Lochia present"
  * text = "Lochia present"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: observation-postnatal-nipple1
InstanceOf: $SD_Observation_PhysicalNipple
Title: "ตัวอย่าง Observation: สภาพหัวนม Postnatal"
Description: "สภาพหัวนม Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#364376001 "Nipple observable"
  * text = "Nipple observable"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"


Instance: observation-postnatal-breastfeeding1
InstanceOf: $SD_Observation_PregBreastfeeding
Title: "ตัวอย่าง Observation: น้ำนม Postnatal"
Description: "น้ำนม Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#63895-7 "Breastfeeding status"
  * text = "Breastfeeding status"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_PCU_PostnatalBreastfeeding#1 "ไหล"


Instance: observation-postnatal-mens1
InstanceOf: $SD_Observation_PregMensStatus
Title: "ตัวอย่าง Observation: ประจำเดือน Postnatal"
Description: "ประจำเดือน Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $LNC#3146-8 "Menstrual status"
  * text = "TEMP"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_PCU_PostnatalMens#1 "ปกติ"


Instance: observation-postnatal-urine-protein1
InstanceOf: $SD_Observation_LabProteinStrip
Title: "ตัวอย่าง Observation: การตรวจโปรตีนทางปัสสาวะ Postnatal"
Description: "การตรวจโปรตีนทางปัสสาวะ Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[loinc] = $LNC#5804-0 "Protein [Mass/volume] in Urine by Test strip"
  * text = "Protein [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0


Instance: observation-postnatal-urine-sugar1
InstanceOf: $SD_Observation_LabGlucoseStrip
Title: "ตัวอย่าง Observation: การตรวจน้ำตาลทางปัสสาวะ Postnatal"
Description: "การตรวจน้ำตาลทางปัสสาวะ Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#laboratory "Laboratory"
  * text = "Laboratory"
* code
  * coding[loinc] = $LNC#5792-7 "Glucose [Mass/volume] in Urine by Test strip"
  * text = "Glucose [Mass/volume] in Urine by Test strip"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueInteger = 0


Instance: observation-postnatal-perineum1
InstanceOf: $SD_Observation_PregPerineum
Title: "ตัวอย่าง Observation: การตรวจฝีเย็บ Postnatal"
Description: "การตรวจฝีเย็บ Postnatal"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#364297003 "Female perineum observable"
  * text = "Female perineum observable"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_PCU_PostnatalPerineum#1 "ปกติ"


Instance: observation-postnatal-status1
InstanceOf: $SD_Observation_PregPostnatalStatus
Title: "ตัวอย่าง Observation: ผลการตรวจมารดาหลังคลอด"
Description: "ผลการตรวจมารดาหลังคลอด"
Usage: #example
* status = #final
* category = $CS_HL7_ObservationCat#exam "Exam"
  * text = "Exam"
* code
  * coding[code43Plus] = $SCT#304598004 "Postnatal examination finding"
  * text = "Postnatal examination finding"
* subject = Reference(Patient/patient-patient6) "นาง สมฤทัย ใจดี"
* effectiveDateTime = "2022-01-21T12:30:02+07:00"
* valueCodeableConcept = $CS_HL7_ObsInterpret#N "Normal"
